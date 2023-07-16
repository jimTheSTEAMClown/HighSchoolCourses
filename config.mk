export DESIGN_NAME = UpDownCounter
export PLATFORM    = nangate45

export VERILOG_FILES = ./designs/src/$(DESIGN_NAME)/UpDownCounter.v
export SDC_FILE      = ./designs/$(PLATFORM)/$(DESIGN_NAME)/constraint.sdc
export ABC_AREA      = 1

export CORE_UTILIZATION ?= 55  # What is the driving constraint?
export PLACE_DENSITY_LB_ADDON = 0.20
export TNS_END_PERCENT ?= 100
