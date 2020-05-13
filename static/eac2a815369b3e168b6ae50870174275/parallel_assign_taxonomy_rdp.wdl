version 1.0

task ParallelAssignTaxonomyRdp.py {
  input {
    String inputInputFastAFp
    String outputOutputDir
  }
  command <<<
    parallel_assign_taxonomy_rdp.py \
      ~{if defined(inputInputFastAFp) then ("--input_fasta_fp " +  '"' + inputInputFastAFp + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output_dir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}