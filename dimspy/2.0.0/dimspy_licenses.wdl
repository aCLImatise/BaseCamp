version 1.0

task DimspyLicenses {
  input {
    Boolean thermoThermoFisher
    Boolean thermoThermoFisher
    Boolean thermoThermoFisher
    Boolean thermoThermoFisher
    Boolean thermoThermoFisher
    Boolean thermoThermoFisher
    Boolean thermoThermoFisher
    Boolean thermoThermoFisher
  }
  command <<<
    dimspy licenses \
      ~{true="- ThermoFisher" false="" thermoThermoFisher} \
      ~{true="- ThermoFisher" false="" thermoThermoFisher} \
      ~{true="- ThermoFisher" false="" thermoThermoFisher} \
      ~{true="- ThermoFisher" false="" thermoThermoFisher} \
      ~{true="- ThermoFisher" false="" thermoThermoFisher} \
      ~{true="- ThermoFisher" false="" thermoThermoFisher} \
      ~{true="- ThermoFisher" false="" thermoThermoFisher} \
      ~{true="- ThermoFisher" false="" thermoThermoFisher}
  >>>
}