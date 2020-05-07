version 1.0

task SentieonBwaPac2bwt {
  input {
    Boolean dD
    String? bwaBwa
    String? pac2bwtPac2bwt
    String? inInPac
    String? outOutBwt
  }
  command <<<
    sentieon-bwa pac2bwt \
      ~{bwaBwa} \
      ~{true="-d" false="" dD} \
      ~{pac2bwtPac2bwt} \
      ~{inInPac} \
      ~{outOutBwt}
  >>>
}