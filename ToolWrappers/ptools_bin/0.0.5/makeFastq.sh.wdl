version 1.0

task MakeFastqsh {
  input {
    String basename
    File var_file
    String? suffix
  }
  command <<<
    makeFastq_sh \
      ~{basename} \
      ~{var_file} \
      ~{suffix}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ptools_bin:0.0.5--pyh3252c3a_0"
  }
  parameter_meta {
    basename: ""
    var_file: ""
    suffix: ""
  }
  output {
    File out_stdout = stdout()
  }
}