version 1.0

task IDRTCalibration {
  input {
    File inIn
    File outOut
    String calibraCalibraNt1Reference
    String calibraCalibraNt2Reference
    String calibraCalibraNt1Input
    String calibraCalibraNt2Input
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    IDRTCalibration \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(calibraCalibraNt1Reference) then ("-calibrant_1_reference " +  '"' + calibraCalibraNt1Reference + '"') else ""} \
      ~{if defined(calibraCalibraNt2Reference) then ("-calibrant_2_reference " +  '"' + calibraCalibraNt2Reference + '"') else ""} \
      ~{if defined(calibraCalibraNt1Input) then ("-calibrant_1_input " +  '"' + calibraCalibraNt1Input + '"') else ""} \
      ~{if defined(calibraCalibraNt2Input) then ("-calibrant_2_input " +  '"' + calibraCalibraNt2Input + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}