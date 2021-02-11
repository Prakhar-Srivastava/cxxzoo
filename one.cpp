#include<iostream>
#include<torch/torch.h>
#include<ATen/ATen.h>
using namespace torch::data;

int main()
{
		at::Tensor a = at::ones({2, 2}, at::kInt);
		at::Tensor b = at::randn({2, 2});
		auto c = a + b.to(at::kInt);
		std::cout<<"A random tensor"<<std::endl
			<<c<<std::endl;
	return 0;
}
