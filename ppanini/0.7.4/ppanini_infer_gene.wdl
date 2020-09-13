version 1.0

task PpaniniInferGene {
  input {
    Int? min_q_cover
    String? var_output
    Int? min_per_cid
    Boolean? all_valid_hits
  }
  command <<<
    ppanini_infer_gene \
      ~{if defined(min_q_cover) then ("--min-qcover " +  '"' + min_q_cover + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(min_per_cid) then ("--min-percid " +  '"' + min_per_cid + '"') else ""} \
      ~{if (all_valid_hits) then "--all-valid-hits" else ""}
  >>>
  parameter_meta {
    min_q_cover: ""
    var_output: ""
    min_per_cid: ""
    all_valid_hits: ""
  }
  output {
    File out_stdout = stdout()
  }
}