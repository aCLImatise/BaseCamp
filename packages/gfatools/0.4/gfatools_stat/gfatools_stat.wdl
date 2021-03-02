version 1.0

task GfatoolsStat {
  input {
    String in_dot_gfa
  }
  command <<<
    gfatools stat \
      ~{in_dot_gfa}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gfatools:0.4--hed695b0_0"
  }
  parameter_meta {
    in_dot_gfa: ""
  }
  output {
    File out_stdout = stdout()
  }
}