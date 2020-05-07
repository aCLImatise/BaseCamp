version 1.0

task GetProts.pl {
  input {
    Boolean iI
    Boolean xX
    Boolean dD
  }
  command <<<
    get_prots.pl \
      ~{true="-I" false="" iI} \
      ~{true="-X" false="" xX} \
      ~{true="-d" false="" dD}
  >>>
}