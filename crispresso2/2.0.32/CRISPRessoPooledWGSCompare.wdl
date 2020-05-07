version 1.0

task CRISPRessoPooledWGSCompare {
  input {
    String nNProcesses
    Boolean saveSaveAlsoPng
    Boolean debugDebug
    String? crisCrisPressoPooledWgsOutputFolder1
    String? crisCrisPressoPooledWgsOutputFolder2
  }
  command <<<
    CRISPRessoPooledWGSCompare \
      ~{crisCrisPressoPooledWgsOutputFolder1} \
      ~{if defined(nNProcesses) then ("--n_processes " +  '"' + nNProcesses + '"') else ""} \
      ~{true="--save_also_png" false="" saveSaveAlsoPng} \
      ~{true="--debug" false="" debugDebug} \
      ~{crisCrisPressoPooledWgsOutputFolder2}
  >>>
}