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
    docker: "quay.io/biocontainers/rust-bio-tools:0.20.5--h4af157f_0"
  }
  parameter_meta {
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}