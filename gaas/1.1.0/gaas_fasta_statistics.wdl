version 1.0

task GaasFastaStatistics.pl {
  input {
    String inInFile
    String outputOutput
  }
  command <<<
    gaas_fasta_statistics.pl \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}