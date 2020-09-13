version 1.0

task Makblkpl {
  input {
    Boolean? use_reduced_alphabet
    Boolean? x_dot_dot_dot
    Boolean? xcc
    Boolean? k
    Boolean? wx_dot
    String or
  }
  command <<<
    makblk_pl \
      ~{or} \
      ~{if (use_reduced_alphabet) then "-r" else ""} \
      ~{if (x_dot_dot_dot) then "-X..." else ""} \
      ~{if (xcc) then "-XCc" else ""} \
      ~{if (k) then "-K" else ""} \
      ~{if (wx_dot) then "-Wx." else ""}
  >>>
  parameter_meta {
    use_reduced_alphabet: ":     use reduced alphabet"
    x_dot_dot_dot: "transferred to spaln"
    xcc: ":   c=0: conti seed; c=1: spaced seed; c>1: conti + (c-1) spaced seeds"
    k: ""
    wx_dot: ""
    or: "makblk.pl [-Wx.[bkn|bkp|bka] -K[D|P|S]] [options] x.grp"
  }
  output {
    File out_stdout = stdout()
  }
}