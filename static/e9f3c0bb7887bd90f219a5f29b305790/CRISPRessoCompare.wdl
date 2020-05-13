version 1.0

task CRISPRessoCompare {
  input {
    Boolean saveSaveAlsoPng
    String? crisCrisPressoOutputFolder1
    String? crisCrisPressoOutputFolder2
  }
  command <<<
    CRISPRessoCompare \
      ~{crisCrisPressoOutputFolder1} \
      ~{true="--save_also_png" false="" saveSaveAlsoPng} \
      ~{crisCrisPressoOutputFolder2}
  >>>
}