version 1.0

task LAmerge {
  input {
    Boolean? verbose_mode_output
    Boolean? sort_areadaposition_pairs
    Boolean? intermediate_merging_directory
    Boolean? va
  }
  command <<<
    LAmerge \
      ~{true="-v" false="" verbose_mode_output} \
      ~{true="-a" false="" sort_areadaposition_pairs} \
      ~{true="-P" false="" intermediate_merging_directory} \
      ~{true="-va" false="" va}
  >>>
  parameter_meta {
    verbose_mode_output: ": Verbose mode, output statistics as proceed."
    sort_areadaposition_pairs: ": sort .las by A-read,A-position pairs for map usecase off => sort .las by A,B-read pairs for overlap piles"
    intermediate_merging_directory: ": Do any intermediate merging in directory -P."
    va: ""
  }
}