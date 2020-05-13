version 1.0

task Sdust {
  input {
    Boolean wW
    Boolean tT
    String? 6464
    String? 2020
    String? inInFa
  }
  command <<<
    sdust \
      ~{6464} \
      ~{true="-w" false="" wW} \
      ~{true="-t" false="" tT} \
      ~{2020} \
      ~{inInFa}
  >>>
}