version 1.0

task GenePredToBedOut.bed {
  input {
    String? inInGenePred
    String? outOutBed
  }
  command <<<
    genePredToBed out.bed \
      ~{inInGenePred} \
      ~{outOutBed}
  >>>
}