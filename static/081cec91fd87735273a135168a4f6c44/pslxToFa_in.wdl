version 1.0

task PslxToFaIn.psl {
  input {
    String? outOutFa
  }
  command <<<
    pslxToFa in.psl \
      ~{outOutFa}
  >>>
}