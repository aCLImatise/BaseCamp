version 1.0

task GenePredToBedIn.genePred {
  input {
    String? outOutBed
  }
  command <<<
    genePredToBed in.genePred \
      ~{outOutBed}
  >>>
}