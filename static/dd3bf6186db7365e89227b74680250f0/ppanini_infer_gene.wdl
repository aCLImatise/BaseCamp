version 1.0

task PpaniniInferGene {
  input {
    String? var_output
    Int? min_per_cid
  }
  command <<<
    ppanini_infer_gene \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(min_per_cid) then ("--min-percid " +  '"' + min_per_cid + '"') else ""}
  >>>
  parameter_meta {
    var_output: ""
    min_per_cid: ""
  }
}