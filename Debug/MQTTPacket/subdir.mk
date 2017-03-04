################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MQTTPacket/MQTTConnectClient.c \
../MQTTPacket/MQTTConnectServer.c \
../MQTTPacket/MQTTDeserializePublish.c \
../MQTTPacket/MQTTFormat.c \
../MQTTPacket/MQTTPacket.c \
../MQTTPacket/MQTTSerializePublish.c \
../MQTTPacket/MQTTSubscribeClient.c \
../MQTTPacket/MQTTSubscribeServer.c \
../MQTTPacket/MQTTUnsubscribeClient.c \
../MQTTPacket/MQTTUnsubscribeServer.c 

OBJS += \
./MQTTPacket/MQTTConnectClient.o \
./MQTTPacket/MQTTConnectServer.o \
./MQTTPacket/MQTTDeserializePublish.o \
./MQTTPacket/MQTTFormat.o \
./MQTTPacket/MQTTPacket.o \
./MQTTPacket/MQTTSerializePublish.o \
./MQTTPacket/MQTTSubscribeClient.o \
./MQTTPacket/MQTTSubscribeServer.o \
./MQTTPacket/MQTTUnsubscribeClient.o \
./MQTTPacket/MQTTUnsubscribeServer.o 

C_DEPS += \
./MQTTPacket/MQTTConnectClient.d \
./MQTTPacket/MQTTConnectServer.d \
./MQTTPacket/MQTTDeserializePublish.d \
./MQTTPacket/MQTTFormat.d \
./MQTTPacket/MQTTPacket.d \
./MQTTPacket/MQTTSerializePublish.d \
./MQTTPacket/MQTTSubscribeClient.d \
./MQTTPacket/MQTTSubscribeServer.d \
./MQTTPacket/MQTTUnsubscribeClient.d \
./MQTTPacket/MQTTUnsubscribeServer.d 


# Each subdirectory must supply rules for building sources it contributes
MQTTPacket/%.o: ../MQTTPacket/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


