version 1.0

task Crumble {
  input {
    Boolean? one
    Boolean? three
    Boolean? five
    Boolean? p_q_
    Boolean? eight
    Boolean? nine
    String in_file
    String out_file
  }
  command <<<
    crumble \
      ~{in_file} \
      ~{out_file} \
      ~{true="-1" false="" one} \
      ~{true="-3" false="" three} \
      ~{true="-5" false="" five} \
      ~{true="-7" false="" p_q_} \
      ~{true="-8" false="" eight} \
      ~{true="-9" false="" nine}
  >>>
  parameter_meta {
    one: ": -p0 -Q75 -D150 -X1  - M0.5 -Z0.1 -V0.5 -P3.0 -s1.0,5 -i2.0,1 -m5"
    three: ": -p0 -Q75 -D150 -X1   -M0.5 -Z0.1 -V0.5 -P3.0 -s1.0,0 -i1.1,2 -m0"
    five: ": -p0 -Q75 -D150 -X1   -M0.5 -Z0.1 -V0.5 -P3.0 -s0.0,0 -i1.1,2 -m0"
    p_q_: ": -p0 -Q75 -D150 -X1   -M1   -Z1   -V0   -P999 -s0.0,0 -i1.1,2 -m0"
    eight: ": -p0 -Q70 -D125 -X1.5 -M1   -Z1   -V0   -P999 -s0.0,0 -i1.0,2 -m0"
    nine: ": -p8 -Q70 -D125 -X1.5 -M1   -Z1   -V0   -P999 -s0.0,0 -i1.0,2 -m0"
    in_file: ""
    out_file: ""
  }
}