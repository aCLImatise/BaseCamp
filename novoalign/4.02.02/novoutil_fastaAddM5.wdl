version 1.0

task NovoutilFastaAddM5 {
  input {
    String? inIn
  }
  command <<<
    novoutil fastaAddM5 \
      ~{inIn}
  >>>
}