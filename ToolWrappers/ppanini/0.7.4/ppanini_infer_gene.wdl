version 1.0

task PpaniniInferGene {
  input {
    Int? min_q_cover
    Int? min_per_cid
    String? var_output
  }
  command <<<
    ppanini_infer_gene \
      ~{if defined(min_q_cover) then ("--min-qcover " +  '"' + min_q_cover + '"') else ""} \
      ~{if defined(min_per_cid) then ("--min-percid " +  '"' + min_per_cid + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  parameter_meta {
    min_q_cover: "[--all-valid-hits]\\nhits"
    min_per_cid: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}