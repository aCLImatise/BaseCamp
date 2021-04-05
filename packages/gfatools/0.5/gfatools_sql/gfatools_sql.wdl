version 1.0

task GfatoolsSql {
  input {
    Boolean? write_sequence
    String in_dot_gfa
  }
  command <<<
    gfatools sql \
      ~{in_dot_gfa} \
      ~{if (write_sequence) then "-s" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gfatools:0.5--hed695b0_0"
  }
  parameter_meta {
    write_sequence: "write sequence"
    in_dot_gfa: ""
  }
  output {
    File out_stdout = stdout()
  }
}