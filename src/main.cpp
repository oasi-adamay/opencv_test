
#include <string>

//---------------------
// OpenCV
#include <opencv2/opencv.hpp>




int main(int argc, char* argv[]) {
	std::string filename = "./image/Lenna.png";

	cv::Mat img = cv::imread(filename);
	cv::imshow(filename,img);
	cv::waitKey();

	return 0;
}

