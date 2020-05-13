version 1.0

task FastaUtilsUidOPTIONSFASTAFILEOUTPUTFILE {
  input {
    File tableTable
  }
  command <<<
    fasta-utils uid OPTIONS FASTA_FILE OUTPUT_FILE \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""}
  >>>
}