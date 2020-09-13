version 1.0

task GenePredToMafFrames {
  input {
    File? bed
    Int? verbose
  }
  command <<<
    genePredToMafFrames \
      ~{if defined(bed) then ("-bed " +  '"' + bed + '"') else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    bed: "- output a bed of for each mafFrame region, useful for debugging."
    verbose: "- enable verbose tracing, the following levels are implemented:\\n3 - print information about data used to compute each record.\\n4 - dump information about the gene mappings that were constructed\\n5 - dump information about the gene mappings after split processing\\n6 - dump information about the gene mappings after frame linking\\n"
  }
  output {
    File out_stdout = stdout()
  }
}