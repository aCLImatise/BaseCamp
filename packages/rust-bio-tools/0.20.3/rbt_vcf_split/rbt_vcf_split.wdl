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
    docker: "quay.io/biocontainers/rust-bio-tools:0.20.3--h4eb7995_3"
  }
  parameter_meta {
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}