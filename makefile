################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32L4xx_HAL_Driver/subdir.mk
-include Drivers/BSP/STM32L475x_IoT_Discovery/subdir.mk
-include Application/Startup/subdir.mk
-include Application/P2P_LB_Example/subdir.mk
-include Application/Common/utilities/subdir.mk
-include Application/Common/tl/subdir.mk
-include Application/Common/hw_interface/subdir.mk
-include Application/Common/ble_services/subdir.mk
-include Application/Common/ble_core/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := P2P_LedButton
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
P2P_LedButton.elf \

MAP_FILES += \
P2P_LedButton.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
P2P_LedButton.list \


# All Target
all: main-build

# Main-build Target
main-build: P2P_LedButton.elf secondary-outputs

# Tool invocations
P2P_LedButton.elf P2P_LedButton.map: $(OBJS) $(USER_OBJS) C:\Users\Acer\Downloads\stm32cubel4_v1-18-0\STM32Cube_FW_L4_V1.18.0\Projects\B-L475E-IOT01A\Applications\BLE\P2P_LedButton\STM32CubeIDE\STM32L475VGTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "P2P_LedButton.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\Acer\Downloads\stm32cubel4_v1-18-0\STM32Cube_FW_L4_V1.18.0\Projects\B-L475E-IOT01A\Applications\BLE\P2P_LedButton\STM32CubeIDE\STM32L475VGTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="P2P_LedButton.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

P2P_LedButton.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "P2P_LedButton.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) P2P_LedButton.elf P2P_LedButton.list P2P_LedButton.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
