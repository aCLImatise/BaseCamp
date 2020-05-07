version 1.0

task DesignRedprintMultistate.py {
  input {
    File fileFile
    Boolean inputInput
    String packagePackage
    String objectiveObjective
    String temperatureTemperature
    String numberNumber
    String modelModel
    String stopStop
    String killKill
    String graphGraphMl
    Boolean csvCsv
    Boolean progressProgress
    Boolean debugDebug
  }
  command <<<
    design-redprint-multistate.py \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{true="--input" false="" inputInput} \
      ~{if defined(packagePackage) then ("--package " +  '"' + packagePackage + '"') else ""} \
      ~{if defined(objectiveObjective) then ("--objective " +  '"' + objectiveObjective + '"') else ""} \
      ~{if defined(temperatureTemperature) then ("--temperature " +  '"' + temperatureTemperature + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{if defined(killKill) then ("--kill " +  '"' + killKill + '"') else ""} \
      ~{if defined(graphGraphMl) then ("--graphml " +  '"' + graphGraphMl + '"') else ""} \
      ~{true="--csv" false="" csvCsv} \
      ~{true="--progress" false="" progressProgress} \
      ~{true="--debug" false="" debugDebug}
  >>>
}