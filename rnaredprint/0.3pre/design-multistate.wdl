version 1.0

task DesignMultistate.py {
  input {
    String inputInput
    String temperatureTemperature
    String numberNumber
    String modelModel
    String energyEnergy
    String gcGc
    String simpleSimpleTolerance
    String toleranceTolerance
    String gcGcTolerance
    Boolean csvCsvOutput
    Boolean debugDebug
  }
  command <<<
    design-multistate.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(temperatureTemperature) then ("--temperature " +  '"' + temperatureTemperature + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(energyEnergy) then ("--energy " +  '"' + energyEnergy + '"') else ""} \
      ~{if defined(gcGc) then ("--gc " +  '"' + gcGc + '"') else ""} \
      ~{if defined(simpleSimpleTolerance) then ("--simple_tolerance " +  '"' + simpleSimpleTolerance + '"') else ""} \
      ~{if defined(toleranceTolerance) then ("--tolerance " +  '"' + toleranceTolerance + '"') else ""} \
      ~{if defined(gcGcTolerance) then ("--gctolerance " +  '"' + gcGcTolerance + '"') else ""} \
      ~{true="--csv_output" false="" csvCsvOutput} \
      ~{true="--debug" false="" debugDebug}
  >>>
}