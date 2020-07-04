version 1.0

task EmirgeRenameFasta.py {
  input {
    String? prob_min
    String? record_prefix
    Boolean? no_n
    Boolean? no_trim_n
    String iter_dot_dir
  }
  command <<<
    emirge_rename_fasta.py \
      ~{iter_dot_dir} \
      ~{if defined(prob_min) then ("--prob_min " +  '"' + prob_min + '"') else ""} \
      ~{if defined(record_prefix) then ("--record_prefix " +  '"' + record_prefix + '"') else ""} \
      ~{true="--no_N" false="" no_n} \
      ~{true="--no_trim_N" false="" no_trim_n}
  >>>
  parameter_meta {
    prob_min: "Only include sequences in output with prior probability above PROB_MIN (Default: include all sequences)"
    record_prefix: "Add the specified prefix to each fasta record title"
    no_n: "Don't change bases with no read support to N. Caution: these bases are not supported by reads in the input data, but will usually be from a closely related sequence."
    no_trim_n: "Don't trim off N bases with no read support from ends of sequences.  Ignored if --no_N is also passed"
    iter_dot_dir: ""
  }
}