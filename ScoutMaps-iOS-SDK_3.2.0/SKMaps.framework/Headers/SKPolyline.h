//
//  SKPolyline.h
//  SKMaps
//
//  Copyright (c) 2016 Skobbler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CLLocation.h>
#import <UIKit/UIColor.h>
#import "SKOverlay.h"

/** SKPolyline stores the information related to a map polyline overlay. This object is used as an input parameter.
 */

NS_ASSUME_NONNULL_BEGIN

@interface SKPolyline : SKOverlay

/** An array of CLLocation objects. Each location represents a vertex of the polyline. This array will be used only if the polyline is instantiated with [SKPolyline polyline].
 */
@property(nonatomic, strong, readonly) NSArray<CLLocation *> *locations;

/** The width of the polyline. Should be a value in [ 0, 10 ] interval. If using dotted lines, use 0.
 */
@property(nonatomic, assign) int lineWidth;

/** The width of the backgrund line. Should be a value in [ 0, 10 ] interval. If using dotted lines, this controls the dotted line's width.
 */
@property(nonatomic, assign) int backgroundLineWidth;

/** Add a CLLocation object to the existing array of locations for this polyline.
 @param location The CLLocation object that needs to be added.
 @return Success / failure of adding the CLLocation object.
 */
- (BOOL)addLocation:(CLLocation *)location;

/** Replace the existing array of locations.
 @param locations An array of CLLocations objects.
 @return Success / failure of replacing the existing array of locations with the new one given as parameter.
 */
- (BOOL)addLocations:(NSArray<CLLocation *> *)locations;

/** Add a CLLocationCoordinate2D object to the existing array of coordinates for this polyline.
 @param coordinate The CLLocationCoordinate2D pointer that needs to be added.
 @return Success / failure of adding the CLLocationCoordinate2D pointer.
 */
- (BOOL)addCoordinateWithLatitude:(CLLocationDegrees)latitude longitude:(CLLocationDegrees)longitude;

/** Use this block to get the polyline coordinates as float (lat, lon).
 @param enumerationBlock The block to execute for each coordinate in the array.
 */
- (void)enumeratePolylineCoordinatesUsingBlock:(void (^)(CLLocationDegrees latitude, CLLocationDegrees longitude))enumerationBlock;

/** A newly initialized SKPolyline. Using this initializer, each vertex of this polyline must be of type CLLocation.
 @return A newly initialized SKPolyline.
 */
+ (instancetype)polyline;

/** A newly initialized SKPolyline. Using this initializer, each vertex of this polyline must be of type CLLocationCoordinate2D.
 @return A newly initialized SKPolyline.
 */
+ (instancetype)polylineCoordinate2D;

@end

NS_ASSUME_NONNULL_END
