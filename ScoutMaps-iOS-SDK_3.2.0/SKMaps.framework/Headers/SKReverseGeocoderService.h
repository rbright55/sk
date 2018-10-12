//
//  SKReverseGeocoderService.h
//  SKMaps
//
//  Copyright (c) 2016 Skobbler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@class SKSearchResult;

/** SKReverseGeocoderService provides support for converting a map coordinate into readable address or place name, such as the country, city, or street. SKReverseGeocoderService supports one operation at a time. If multiple reverse geocoder requests were started, only the latest request will be processed. It works only offline with data from cached tiles or offline packages.
 */

NS_ASSUME_NONNULL_BEGIN

@interface SKReverseGeocoderService : NSObject

/** Returns the singleton SKReverseGeocoderService instance.
 */
+ (instancetype)sharedInstance;

/** Converts a map coordinate into readable address or place name.
 @param location The location on the map.
 @return The reverse geocoding result. The parentSearchResults property of the SKSearchResult contains additional information. If no map tiles are available for given position, it will be nil.
 */
- (nullable SKSearchResult *)reverseGeocodeLocation:(CLLocationCoordinate2D)location;

@end

NS_ASSUME_NONNULL_END

