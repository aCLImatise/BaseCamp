version 1.0

task DesignLigandswitch.py {
  input {
    File fileFile
    Boolean inputInput
    String ratioRatio
    String ligandLigand
    String temperatureTemperature
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
    design-ligandswitch.py \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{true="--input" false="" inputInput} \
      ~{if defined(ratioRatio) then ("--ratio " +  '"' + ratioRatio + '"') else ""} \
      ~{if defined(ligandLigand) then ("--ligand " +  '"' + ligandLigand + '"') else ""} \
      ~{if defined(temperatureTemperature) then ("--temperature " +  '"' + temperatureTemperature + '"') else ""} \
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