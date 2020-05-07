version 1.0

task PslDropOverlapOut.psl {
  input {
    String? inInPsl
    String? outOutPsl
  }
  command <<<
    pslDropOverlap out.psl \
      ~{inInPsl} \
      ~{outOutPsl}
  >>>
}