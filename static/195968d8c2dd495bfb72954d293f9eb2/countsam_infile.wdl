version 1.0

task CountsamInfile.sam {
  input {
    String? refRefFlatTxt
  }
  command <<<
    countsam infile.sam \
      ~{refRefFlatTxt}
  >>>
}