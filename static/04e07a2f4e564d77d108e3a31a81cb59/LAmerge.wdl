version 1.0

task LAmerge {
  input {
    Boolean? verbose_mode_output
    Boolean? sort_areadaposition_pairs
    Boolean? do_intermediate_merging
    Boolean? va
  }
  command <<<
    LAmerge \
      ~{if (verbose_mode_output) then "-v" else ""} \
      ~{if (sort_areadaposition_pairs) then "-a" else ""} \
      ~{if (do_intermediate_merging) then "-P" else ""} \
      ~{if (va) then "-va" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose_mode_output: ": Verbose mode, output statistics as proceed."
    sort_areadaposition_pairs: ": sort .las by A-read,A-position pairs for map usecase\\noff => sort .las by A,B-read pairs for overlap piles"
    do_intermediate_merging: ": Do any intermediate merging in directory -P."
    va: ""
  }
  output {
    File out_stdout = stdout()
  }
}