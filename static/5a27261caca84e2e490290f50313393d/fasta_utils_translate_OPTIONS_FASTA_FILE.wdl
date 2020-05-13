version 1.0

task FastaUtilsTranslateOPTIONSFASTAFILE {
  input {
    Boolean transTransTable
    Boolean progressProgress
  }
  command <<<
    fasta-utils translate OPTIONS FASTA_FILE \
      ~{true="--trans-table" false="" transTransTable} \
      ~{true="--progress" false="" progressProgress}
  >>>
}