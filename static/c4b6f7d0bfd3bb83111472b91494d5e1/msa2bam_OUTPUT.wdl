version 1.0

task Msa2bamOUTPUT {
  input {
    String? r
    Int msa_two_bam
    String var_input
    String var_output
  }
  command <<<
    msa2bam OUTPUT \
      ~{msa_two_bam} \
      ~{var_input} \
      ~{var_output} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    r: ""
    msa_two_bam: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}