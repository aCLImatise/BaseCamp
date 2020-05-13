version 1.0

task AnviGenPhylogenomicTree {
  input {
    String fastFastAFile
    File outputOutputFile
    String programProgram
  }
  command <<<
    anvi-gen-phylogenomic-tree \
      ~{if defined(fastFastAFile) then ("--fasta-file " +  '"' + fastFastAFile + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(programProgram) then ("--program " +  '"' + programProgram + '"') else ""}
  >>>
}