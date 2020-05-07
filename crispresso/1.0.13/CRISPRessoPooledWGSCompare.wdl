version 1.0

task CRISPRessoPooledWGSCompare {
  input {
    Boolean saveSaveAlsoPng
    String? crisCrisPressoPooledWgsOutputFolder1
    String? crisCrisPressoPooledWgsOutputFolder2
  }
  command <<<
    CRISPRessoPooledWGSCompare \
      ~{crisCrisPressoPooledWgsOutputFolder1} \
      ~{true="--save_also_png" false="" saveSaveAlsoPng} \
      ~{crisCrisPressoPooledWgsOutputFolder2}
  >>>
}