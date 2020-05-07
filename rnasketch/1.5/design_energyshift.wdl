version 1.0

task DesignEnergyshift.py {
  input {
    File fileFile
    Boolean inputInput
    String packagePackage
    String objectiveObjective
    String temperatureTemperature
    String numberNumber
    String modelModel
    String energiesEnergies
    String stopStop
    Boolean csvCsv
    String killKill
    Boolean progressProgress
    Boolean debugDebug
  }
  command <<<
    design-energyshift.py \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{true="--input" false="" inputInput} \
      ~{if defined(packagePackage) then ("--package " +  '"' + packagePackage + '"') else ""} \
      ~{if defined(objectiveObjective) then ("--objective " +  '"' + objectiveObjective + '"') else ""} \
      ~{if defined(temperatureTemperature) then ("--temperature " +  '"' + temperatureTemperature + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(energiesEnergies) then ("--energies " +  '"' + energiesEnergies + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{true="--csv" false="" csvCsv} \
      ~{if defined(killKill) then ("--kill " +  '"' + killKill + '"') else ""} \
      ~{true="--progress" false="" progressProgress} \
      ~{true="--debug" false="" debugDebug}
  >>>
}