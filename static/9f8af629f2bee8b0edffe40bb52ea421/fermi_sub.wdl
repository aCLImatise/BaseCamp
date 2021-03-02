version 1.0

task FermiSub {
  input {
    String? t
    Boolean? c
    String in_dot_fmd
    String array_dot_bits
  }
  command <<<
    fermi sub \
      ~{in_dot_fmd} \
      ~{array_dot_bits} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if (c) then "-c" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    t: ""
    c: ""
    in_dot_fmd: ""
    array_dot_bits: ""
  }
  output {
    File out_stdout = stdout()
  }
}