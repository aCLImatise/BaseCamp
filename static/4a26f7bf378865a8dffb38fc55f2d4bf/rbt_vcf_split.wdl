version 1.0

task RbtVcfsplit {
  input {
    String var_input
    String? var_output
  }
  command <<<
    rbt vcf_split \
      ~{var_input} \
      ~{var_output}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rust-bio-tools:0.19.5--heda7bfa_0"
  }
  parameter_meta {
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}