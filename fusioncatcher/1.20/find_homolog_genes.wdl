version 1.0

task FindHomologGenes.py {
  input {
    String inputInput
    String outputOutput
    String readsReads
    String outputOutputOffendingPairReads
    String inputInputExons
    String filterFilter
    Boolean d0D0
    Boolean d1D1
    String outputOutputSavedFromPseudogenes
    String inputInputPseudogenes
    String processesProcesses
  }
  command <<<
    find_homolog_genes.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(readsReads) then ("--reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(outputOutputOffendingPairReads) then ("--output_offending_pair_reads " +  '"' + outputOutputOffendingPairReads + '"') else ""} \
      ~{if defined(inputInputExons) then ("--input_exons " +  '"' + inputInputExons + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{true="--d0" false="" d0D0} \
      ~{true="--d1" false="" d1D1} \
      ~{if defined(outputOutputSavedFromPseudogenes) then ("--output_saved_from_pseudogenes " +  '"' + outputOutputSavedFromPseudogenes + '"') else ""} \
      ~{if defined(inputInputPseudogenes) then ("--input_pseudogenes " +  '"' + inputInputPseudogenes + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""}
  >>>
}