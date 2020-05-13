version 1.0

task DesignThermoswitch.py {
  input {
    String packagePackage
    String numberNumber
    String stopStop
    String modeMode
    String killKill
    String graphGraphMl
    Boolean csvCsv
    Boolean progressProgress
    Boolean debugDebug
  }
  command <<<
    design-thermoswitch.py \
      ~{if defined(packagePackage) then ("--package " +  '"' + packagePackage + '"') else ""} \
      ~{if defined(numberNumber) then ("--number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(killKill) then ("--kill " +  '"' + killKill + '"') else ""} \
      ~{if defined(graphGraphMl) then ("--graphml " +  '"' + graphGraphMl + '"') else ""} \
      ~{true="--csv" false="" csvCsv} \
      ~{true="--progress" false="" progressProgress} \
      ~{true="--debug" false="" debugDebug}
  >>>
}