version 1.0

task EbiMetagenomicsPrintPossibleRunDataOPTIONS {
  input {
    String runRun
  }
  command <<<
    ebi_metagenomics print_possible_run_data OPTIONS \
      ~{if defined(runRun) then ("--run " +  '"' + runRun + '"') else ""}
  >>>
}