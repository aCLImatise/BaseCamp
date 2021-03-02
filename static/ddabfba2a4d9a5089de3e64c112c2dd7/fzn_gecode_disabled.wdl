version 1.0

task FzngecodeDisabled {
  input {
    String fz_n_gecode
    File var_file
  }
  command <<<
    fzn_gecode disabled \
      ~{fz_n_gecode} \
      ~{var_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0"
  }
  parameter_meta {
    fz_n_gecode: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}