version 1.0

task Genseq {
  input {
    Int? n_seq
    String? alphabet_for_sequences
    Boolean? mean_log_len
    Boolean? sd_log_len
    String? option
    String run_name
  }
  command <<<
    genseq \
      ~{run_name} \
      ~{if defined(n_seq) then ("-Nseq " +  '"' + n_seq + '"') else ""} \
      ~{if defined(alphabet_for_sequences) then ("-a " +  '"' + alphabet_for_sequences + '"') else ""} \
      ~{true="-meanloglen" false="" mean_log_len} \
      ~{true="-sdloglen" false="" sd_log_len} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    n_seq: "number of sequences to generate"
    alphabet_for_sequences: "alphabet for sequences"
    mean_log_len: "Ave(log length) (  5.415100)"
    sd_log_len: "Std Dev (log length) (  1.036326)"
    option: ""
    run_name: ""
  }
}