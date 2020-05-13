version 1.0

task GaasFastaPurify.pl {
  input {
    String inInFile
    String sizeSize
    String outputOutput
  }
  command <<<
    gaas_fasta_purify.pl \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}