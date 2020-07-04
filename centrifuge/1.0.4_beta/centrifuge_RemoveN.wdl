version 1.0

task CentrifugeRemoveN.pl {
  input {
    String a_dot_pl
    String xxx_dot_fa
  }
  command <<<
    centrifuge-RemoveN.pl \
      ~{a_dot_pl} \
      ~{xxx_dot_fa}
  >>>
  parameter_meta {
    a_dot_pl: ""
    xxx_dot_fa: ""
  }
}