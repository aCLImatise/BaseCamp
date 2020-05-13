version 1.0

task PslPosTargetOutPsl {
  input {
    String? inInPsl
    String? outOutPsl
  }
  command <<<
    pslPosTarget outPsl \
      ~{inInPsl} \
      ~{outOutPsl}
  >>>
}