version 1.0

task LAsort {
  input {
    Boolean? verbose_mode_output
    Boolean? sort_areadaposition_pairs
    Boolean? va
  }
  command <<<
    LAsort \
      ~{if (verbose_mode_output) then "-v" else ""} \
      ~{if (sort_areadaposition_pairs) then "-a" else ""} \
      ~{if (va) then "-va" else ""}
  >>>
  parameter_meta {
    verbose_mode_output: ": Verbose mode, output statistics as proceed."
    sort_areadaposition_pairs: ": sort .las by A-read,A-position pairs for map usecase\\noff => sort .las by A,B-read pairs for overlap piles\\n"
    va: ""
  }
  output {
    File out_stdout = stdout()
  }
}