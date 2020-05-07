version 1.0

task PslPosTargetInPsl {
  input {
    String? outOutPsl
  }
  command <<<
    pslPosTarget inPsl \
      ~{outOutPsl}
  >>>
}