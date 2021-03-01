version 1.0

task PpaniniInferGene {
  input {
    Int? min_per_cid
    String? var_output
  }
  command <<<
    ppanini_infer_gene \
      ~{if defined(min_per_cid) then ("--min-percid " +  '"' + min_per_cid + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    min_per_cid: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}