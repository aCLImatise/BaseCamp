version 1.0

task EmirgeRenameFastapy {
  input {
    Int? prob_min
    String? record_prefix
    Boolean? no_n
    Boolean? no_trim_n
    String iter_dot_dir
  }
  command <<<
    emirge_rename_fasta_py \
      ~{iter_dot_dir} \
      ~{if defined(prob_min) then ("--prob_min " +  '"' + prob_min + '"') else ""} \
      ~{if defined(record_prefix) then ("--record_prefix " +  '"' + record_prefix + '"') else ""} \
      ~{if (no_n) then "--no_N" else ""} \
      ~{if (no_trim_n) then "--no_trim_N" else ""}
  >>>
  parameter_meta {
    prob_min: "Only include sequences in output with prior\\nprobability above PROB_MIN (Default: include all\\nsequences)"
    record_prefix: "Add the specified prefix to each fasta record title"
    no_n: "Don't change bases with no read support to N.\\nCaution: these bases are not supported by reads in the\\ninput data, but will usually be from a closely related\\nsequence."
    no_trim_n: "Don't trim off N bases with no read support from ends\\nof sequences.  Ignored if --no_N is also passed\\n"
    iter_dot_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}