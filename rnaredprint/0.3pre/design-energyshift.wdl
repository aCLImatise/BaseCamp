version 1.0

task DesignEnergyshift.py {
  input {
    String inputInput
    String temperatureTemperature
    String numberNumber
    String modelModel
    String energiesEnergies
    String gcGc
    String simpleSimpleTolerance
    String gcGcTolerance
    String toleranceTolerance
    Boolean csvCsvOutput
    Boolean debugDebug
  }
  command <<<
    design-energyshift.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(temperatureTemperature) then ("--temperature " +  '"' + temperatureTemperature + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(energiesEnergies) then ("--energies " +  '"' + energiesEnergies + '"') else ""} \
      ~{if defined(gcGc) then ("--gc " +  '"' + gcGc + '"') else ""} \
      ~{if defined(simpleSimpleTolerance) then ("--simple_tolerance " +  '"' + simpleSimpleTolerance + '"') else ""} \
      ~{if defined(gcGcTolerance) then ("--gctolerance " +  '"' + gcGcTolerance + '"') else ""} \
      ~{if defined(toleranceTolerance) then ("--tolerance " +  '"' + toleranceTolerance + '"') else ""} \
      ~{true="--csv_output" false="" csvCsvOutput} \
      ~{true="--debug" false="" debugDebug}
  >>>
}