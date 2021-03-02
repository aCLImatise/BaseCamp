version 1.0

task SecaprPhaseAlleles {
  input {
    Directory? call_folder_contains
    Directory? output_directory_safed
    Int? min_coverage
    Directory? provide_reference_used
    String phase_remapped_form
  }
  command <<<
    secapr phase_alleles \
      ~{phase_remapped_form} \
      ~{if defined(call_folder_contains) then ("--input " +  '"' + call_folder_contains + '"') else ""} \
      ~{if defined(output_directory_safed) then ("--output " +  '"' + output_directory_safed + '"') else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(provide_reference_used) then ("--reference " +  '"' + provide_reference_used + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    call_folder_contains: "Call the folder that contains the results of the\\nreference based assembly (output of reference_assembly\\nfunction, containing the bam-files)."
    output_directory_safed: "The output directory where results will be safed."
    min_coverage: "Set the minimum read coverage. Only positions that are\\ncovered by this number of reads will be called in the\\nconsensus sequence, otherwise the program will add an\\nambiguity at this position."
    provide_reference_used: "Provide the reference that was used for read-mapping.\\nIf you used the alignment-consensus method, provide\\nthe joined_fasta_library.fasta which is found in the\\nreference_seqs folder within the reference-assembly\\noutput.\\n"
    phase_remapped_form: "Phase remapped reads form reference-based assembly into two separate alleles."
  }
  output {
    File out_stdout = stdout()
    Directory out_call_folder_contains = "${in_call_folder_contains}"
    Directory out_output_directory_safed = "${in_output_directory_safed}"
    Directory out_provide_reference_used = "${in_provide_reference_used}"
  }
}