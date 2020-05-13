version 1.0

task CountsamRefFlat.txt {
  input {
    String? inInFilesAm
    String? refRefFlatTxt
  }
  command <<<
    countsam refFlat.txt \
      ~{inInFilesAm} \
      ~{refRefFlatTxt}
  >>>
}