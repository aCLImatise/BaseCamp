version 1.0

task Makblk.pl {
  input {
    Boolean? use_reduced_alphabet
    Boolean? x_dot_dot_dot
    Boolean? wx_dot
    Boolean? k
    String or
  }
  command <<<
    makblk.pl \
      ~{or} \
      ~{true="-r" false="" use_reduced_alphabet} \
      ~{true="-X..." false="" x_dot_dot_dot} \
      ~{true="-Wx." false="" wx_dot} \
      ~{true="-K" false="" k}
  >>>
  parameter_meta {
    use_reduced_alphabet: ":     use reduced alphabet"
    x_dot_dot_dot: "transferred to spaln"
    wx_dot: ""
    k: ""
    or: "makblk.pl [-Wx.[bkn|bkp|bka] -K[D|P|S]] [options] x.grp"
  }
}