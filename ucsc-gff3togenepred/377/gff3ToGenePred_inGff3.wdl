version 1.0

task Gff3ToGenePredInGff3 {
  input {
    String? outOutGp
  }
  command <<<
    gff3ToGenePred inGff3 \
      ~{outOutGp}
  >>>
}