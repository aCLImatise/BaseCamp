version 1.0

task PslDropOverlapIn.psl {
  input {
    String? outOutPsl
  }
  command <<<
    pslDropOverlap in.psl \
      ~{outOutPsl}
  >>>
}