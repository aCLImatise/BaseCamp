version 1.0

task GaasFastaCheckProteins.pl {
  input {
    String refRefFile
    String outputOutput
  }
  command <<<
    gaas_fasta_checkProteins.pl \
      ~{if defined(refRefFile) then ("--reffile " +  '"' + refRefFile + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}