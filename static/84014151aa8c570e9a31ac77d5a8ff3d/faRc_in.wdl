version 1.0

task FaRcIn.fa {
  input {
    String? outOutFa
  }
  command <<<
    faRc in.fa \
      ~{outOutFa}
  >>>
}