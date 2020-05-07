version 1.0

task SpadesBwaPac2bwt {
  input {
    Boolean dD
    String? bwaBwa
    String? pac2bwtPac2bwt
    String? inInPac
    String? outOutBwt
  }
  command <<<
    spades-bwa pac2bwt \
      ~{bwaBwa} \
      ~{true="-d" false="" dD} \
      ~{pac2bwtPac2bwt} \
      ~{inInPac} \
      ~{outOutBwt}
  >>>
}