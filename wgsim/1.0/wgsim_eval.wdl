version 1.0

task WgsimEval.plUniqcmp {
  input {
    Int? confident_mapping_mapping
    Int? same_mapping_distance
    Int? penalty_for_difference
    Boolean? options
    Boolean? more_options
    String wg_sim_eval_do_tpl
  }
  command <<<
    wgsim_eval.pl uniqcmp \
      ~{wg_sim_eval_do_tpl} \
      ~{if defined(confident_mapping_mapping) then ("-q " +  '"' + confident_mapping_mapping + '"') else ""} \
      ~{if defined(same_mapping_distance) then ("-s " +  '"' + same_mapping_distance + '"') else ""} \
      ~{if defined(penalty_for_difference) then ("-b " +  '"' + penalty_for_difference + '"') else ""} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    confident_mapping_mapping: "confident mapping if mapping quality above INT [20]"
    same_mapping_distance: "same mapping if the distance below INT [100]"
    penalty_for_difference: "penalty for a difference [4]"
    options: ""
    more_options: ""
    wg_sim_eval_do_tpl: ""
  }
}