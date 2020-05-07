version 1.0

task ParallelAssignTaxonomyUclust.py {
  input {
    String inputInputFastAFp
    String outputOutputDir
  }
  command <<<
    parallel_assign_taxonomy_uclust.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}