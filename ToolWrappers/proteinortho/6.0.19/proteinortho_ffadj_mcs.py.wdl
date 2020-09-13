version 1.0

task ProteinorthoFfadjMcspy {
  input {
    Int? repeat_matching
    Int? min_cs_size
    String? greedy
    String? edge_weight_threshold
    String? alpha
  }
  command <<<
    proteinortho_ffadj_mcs_py \
      ~{if defined(repeat_matching) then ("--repeat-matching " +  '"' + repeat_matching + '"') else ""} \
      ~{if defined(min_cs_size) then ("--min-cs-size " +  '"' + min_cs_size + '"') else ""} \
      ~{if defined(greedy) then ("--greedy " +  '"' + greedy + '"') else ""} \
      ~{if defined(edge_weight_threshold) then ("--edge_weight_threshold " +  '"' + edge_weight_threshold + '"') else ""} \
      ~{if defined(alpha) then ("--alpha " +  '"' + alpha + '"') else ""}
  >>>
  parameter_meta {
    repeat_matching: "match N repetitions (default: 0)"
    min_cs_size: "minimal cs size (default: 1)"
    greedy: ""
    edge_weight_threshold: ""
    alpha: ""
  }
  output {
    File out_stdout = stdout()
  }
}