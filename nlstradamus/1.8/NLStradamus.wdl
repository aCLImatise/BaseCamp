version 1.0

task NLStradamus {
  input {
    File? file
    Boolean? posterior_threshold_default
    Boolean? model_two_state
    Boolean? algorithm_viterbi_posterior
    Boolean? tab
  }
  command <<<
    NLStradamus \
      ~{if defined(file) then ("-i " +  '"' + file + '"') else ""} \
      ~{if (posterior_threshold_default) then "-t" else ""} \
      ~{if (model_two_state) then "-m" else ""} \
      ~{if (algorithm_viterbi_posterior) then "-a" else ""} \
      ~{if (tab) then "-tab" else ""}
  >>>
  parameter_meta {
    file: "file"
    posterior_threshold_default: "[optional] Posterior Threshold (0...1) default 0.6"
    model_two_state: "[optional] Model (1 for two state, 2 for four state) default 1"
    algorithm_viterbi_posterior: "[optional] Algorithm (0 for viterbi, 1 for posterior with threshold, 2 for both) default 1"
    tab: "[optional] flag for tab delimited output. default is off"
  }
  output {
    File out_stdout = stdout()
  }
}