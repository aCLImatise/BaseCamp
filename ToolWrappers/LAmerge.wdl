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
      ~{if (verbose_mode_output) then "-v" else ""} \
      ~{if (sort_areadaposition_pairs) then "-a" else ""} \
      ~{if (intermediate_merging_directory) then "-P" else ""} \
      ~{if (va) then "-va" else ""}
  >>>
  parameter_meta {
    verbose_mode_output: ": Verbose mode, output statistics as proceed."
    sort_areadaposition_pairs: ": sort .las by A-read,A-position pairs for map usecase\\noff => sort .las by A,B-read pairs for overlap piles"
    intermediate_merging_directory: ": Do any intermediate merging in directory -P."
    va: ""
  }
  output {
    File out_stdout = stdout()
  }
}