################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../mysql/CppDataBase.cpp 

OBJS += \
./mysql/CppDataBase.o 

CPP_DEPS += \
./mysql/CppDataBase.d 


# Each subdirectory must supply rules for building sources it contributes
mysql/%.o: ../mysql/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


