version 1.0

task RsatRescanmatrix {
  input {
    Boolean? iterations
    String rescan_matrix
  }
  command <<<
    rsat rescan_matrix \
      ~{rescan_matrix} \
      ~{if (iterations) then "-iterations" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    iterations: ") of site detection <-> matrix building. The process stops at"
    rescan_matrix: "[1mVERSION[0m"
  }
  output {
    File out_stdout = stdout()
  }
}