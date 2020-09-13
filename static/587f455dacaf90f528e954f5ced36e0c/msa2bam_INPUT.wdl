version 1.0

task Msa2bamINPUT {
  input {
    String? r
    String var_output
  }
  command <<<
    msa2bam INPUT \
      ~{var_output} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}