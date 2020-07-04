version 1.0

task Bam2msaINPUT {
  input {
    String? r
    String var_output
  }
  command <<<
    bam2msa INPUT \
      ~{var_output} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    r: ""
    var_output: ""
  }
}