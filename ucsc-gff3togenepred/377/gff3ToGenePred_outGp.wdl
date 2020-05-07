version 1.0

task Gff3ToGenePredOutGp {
  input {
    String? ingff3Ingff3
    String? outOutGp
  }
  command <<<
    gff3ToGenePred outGp \
      ~{ingff3Ingff3} \
      ~{outOutGp}
  >>>
}