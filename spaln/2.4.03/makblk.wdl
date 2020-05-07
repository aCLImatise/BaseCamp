version 1.0

task Makblk.pl {
  input {
    Boolean rR
    Boolean xX
    String? orOr
  }
  command <<<
    makblk.pl \
      ~{orOr} \
      ~{true="-r" false="" rR} \
      ~{true="-X" false="" xX}
  >>>
}