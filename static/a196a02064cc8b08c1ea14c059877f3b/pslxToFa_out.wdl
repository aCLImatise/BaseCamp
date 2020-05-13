version 1.0

task PslxToFaOut.fa {
  input {
    String? inInPsl
    String? outOutFa
  }
  command <<<
    pslxToFa out.fa \
      ~{inInPsl} \
      ~{outOutFa}
  >>>
}