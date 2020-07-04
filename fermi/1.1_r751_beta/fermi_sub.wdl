version 1.0

task FermiSub {
  input {
    Boolean? c
    String? t
    String in_dot_fmd
    String array_dot_bits
  }
  command <<<
    fermi sub \
      ~{in_dot_fmd} \
      ~{array_dot_bits} \
      ~{true="-c" false="" c} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    c: ""
    t: ""
    in_dot_fmd: ""
    array_dot_bits: ""
  }
}