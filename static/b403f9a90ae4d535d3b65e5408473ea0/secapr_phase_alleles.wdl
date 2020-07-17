version 1.0

task SecaprPhaseAlleles {
  input {
    String? call_folder_contains
    String? output_directory_safed
    Int? min_coverage
    String? reference
  }
  command <<<
    secapr phase_alleles \
      ~{if defined(call_folder_contains) then ("--input " +  '"' + call_folder_contains + '"') else ""} \
      ~{if defined(output_directory_safed) then ("--output " +  '"' + output_directory_safed + '"') else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    call_folder_contains: "Call the folder that contains the results of the reference based assembly (output of reference_assembly function, containing the bam-files)."
    output_directory_safed: "The output directory where results will be safed."
    min_coverage: "Set the minimum read coverage. Only positions that are covered by this number of reads will be called in the consensus sequence, otherwise the program will add an ambiguity at this position."
    reference: "Provide the reference that was used for read-mapping. If you used the alignment-consensus method, provide the joined_fasta_library.fasta which is found in the reference_seqs folder within the reference-assembly output."
  }
}