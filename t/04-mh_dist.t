use 5.010;
use strict;
use FindBin;
use lib "t/lib","lib","$FindBin::Bin/../blib/lib","$FindBin::Bin/../blib/arch";
use Test::More;

use Image::pHash;

# is(
#     Image::pHash::mh_dist(
#         Image::pHash::mh_hash('test_images/image.jpg',1,2),
#         Image::pHash::mh_hash('test_images/image.png',1,2),
#     ),
#     -1,
#     "Got distance between the two images"
# );

is(
    Image::pHash::mh_dist(
        Image::pHash::mh_hash('test_images/image.jpg',1,2),
        Image::pHash::mh_hash('test_images/image.png',1,2),
    ),
    1/3,
    "Got distance between the two images"
);

is(
    Image::pHash::mh_dist(
        Image::pHash::mh_hash('test_images/image.jpg',1,2),
        Image::pHash::mh_hash('test_images/image.jpg',1,2),
    ),
    0,
    "Images are the same"
);

done_testing();
