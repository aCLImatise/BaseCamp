version 1.0

task EbiMetagenomicsPrintPossibleRunData {
  input {
    String? run
  }
  command <<<
    ebi_metagenomics print_possible_run_data \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""}
  >>>
  parameter_meta {
    run: "Id of a run in EBI metagenomics"
  }
  output {
    File out_stdout = stdout()
  }
}