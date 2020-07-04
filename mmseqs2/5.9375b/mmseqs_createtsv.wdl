version 1.0

task MmseqsCreatetsv {
  input {
    Boolean? first_seq_as_repr
    Boolean? target_column
    Boolean? full_header
    Boolean? db_output
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs createtsv \
      ~{true="--first-seq-as-repr" false="" first_seq_as_repr} \
      ~{true="--target-column" false="" target_column} \
      ~{true="--full-header" false="" full_header} \
      ~{true="--db-output" false="" db_output} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    first_seq_as_repr: "false           Use the first sequence of the clustering result as representative sequence"
    target_column: "1               Select a target column (default 1), 0 if no target id exists."
    full_header: "false           Replace DB ID by its corresponding Full Header              "
    db_output: "false           Output a result db instead of a text file                   "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}