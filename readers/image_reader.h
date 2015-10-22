#ifndef _IMAGE_READER_H_
#define _IMAGE_READER_H_

#include <stdint.h>
#include "png_reader.h"
#include "jpeg_reader.h"
#include "gif_reader.h"

using namespace cimg_library;

namespace image_reader {
	
	template <typename T>
	static CImg<T> *read_image(const char* buffer, size_t size) {
		if (buffer == NULL) {
			return NULL;
		}
		
		if (_check_png(buffer, size)) {
			return _read_png<T>(buffer, size);
		}
		if (_check_jpeg(buffer, size)) {
			return _read_jpeg<T>(buffer, size);
		}
		if (_check_gif(buffer, size)) {
			return _read_gif<T>(buffer, size);
		}
		
		return NULL;
		
	}

	

}

#endif // _IMAGE_READER_H_
