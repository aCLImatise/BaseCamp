version 1.0

task Splitsam4waysh {
  input {
    String var_input
    String out_plus
    String out_minus
    String out_chimeric
    String out_unmapped
  }
  command <<<
    splitsam4way_sh \
      ~{var_input} \
      ~{out_plus} \
      ~{out_minus} \
      ~{out_chimeric} \
      ~{out_unmapped}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bbmap:38.90--h1296035_0"
  }
  parameter_meta {
    var_input: ""
    out_plus: ""
    out_minus: ""
    out_chimeric: ""
    out_unmapped: ""
  }
  output {
    File out_stdout = stdout()
  }
}