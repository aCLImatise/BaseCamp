version 1.0

task BwaPac2bwt {
  input {
    Boolean dD
    String? inInPac
    String? outOutBwt
  }
  command <<<
    bwa pac2bwt \
      ~{inInPac} \
      ~{true="-d" false="" dD} \
      ~{outOutBwt}
  >>>
}