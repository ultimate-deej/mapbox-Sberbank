//  Created by Darius Dark on 06/03/15.



#import "RMCurvedPolylineAnnotation.h"
#import "RMShape.h"

@implementation RMCurvedPolylineAnnotation

- (RMMapLayer *)layer
{
    if ( ! [super layer])
    {
        RMShape *shape = [[RMShape alloc] initWithView:self.mapView];
        
       [shape setupWithCoordinatesArray:self.points];
        
        super.layer = shape;
    }
    
    return [super layer];
}

@end
