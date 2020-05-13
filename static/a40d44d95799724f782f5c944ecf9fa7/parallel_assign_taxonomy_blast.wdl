version 1.0

task ParallelAssignTaxonomyBlast.py {
  input {
    String inputInputFastAFp
    String outputOutputDir
  }
  command <<<
    parallel_assign_taxonomy_blast.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}