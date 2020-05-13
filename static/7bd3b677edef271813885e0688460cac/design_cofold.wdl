version 1.0

task DesignCofold.py {
  input {
    Boolean inputInput
    String packagePackage
    String temperatureTemperature
    String numberNumber
    String stopStop
    String modeMode
    String killKill
    String graphGraphMl
    Boolean csvCsv
    Boolean progressProgress
    Boolean debugDebug
    String reporterReporter
  }
  command <<<
    design-cofold.py \
      ~{true="--input" false="" inputInput} \
      ~{if defined(packagePackage) then ("--package " +  '"' + packagePackage + '"') else ""} \
      ~{if defined(temperatureTemperature) then ("--temperature " +  '"' + temperatureTemperature + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(killKill) then ("--kill " +  '"' + killKill + '"') else ""} \
      ~{if defined(graphGraphMl) then ("--graphml " +  '"' + graphGraphMl + '"') else ""} \
      ~{true="--csv" false="" csvCsv} \
      ~{true="--progress" false="" progressProgress} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(reporterReporter) then ("--reporter " +  '"' + reporterReporter + '"') else ""}
  >>>
}