version 1.0

task FaRcOut.fa {
  input {
    String? inInFa
    String? outOutFa
  }
  command <<<
    faRc out.fa \
      ~{inInFa} \
      ~{outOutFa}
  >>>
}