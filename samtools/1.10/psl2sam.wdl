version 1.0

task Psl2sam.pl {
  input {
    Boolean aA
    Boolean bB
    Boolean qQ
    Boolean rR
    String? 11
    String? 33
    String? 55
    String? 22
    String? inInPsl
  }
  command <<<
    psl2sam.pl \
      ~{11} \
      ~{true="-a" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-q" false="" qQ} \
      ~{true="-r" false="" rR} \
      ~{33} \
      ~{55} \
      ~{22} \
      ~{inInPsl}
  >>>
}