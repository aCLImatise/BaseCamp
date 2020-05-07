version 1.0

task QaToQac {
  input {
    String? inInQa
    String? outOutQac
  }
  command <<<
    qaToQac \
      ~{inInQa} \
      ~{outOutQac}
  >>>
}