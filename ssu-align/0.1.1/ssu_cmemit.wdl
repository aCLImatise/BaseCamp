version 1.0

task SsuCmemit {
  input {
    String nN
    Boolean uU
    Boolean aA
    Boolean cC
    Boolean lL
    String iI
    String sS
    Boolean devhelpDevhelp
    Boolean rnaRna
    Boolean dnaDna
    Boolean iILeaved
    String tTFile
    String expExp
    String beginBegin
    String endEnd
    String? cmCmFile
    String? sequenceSequenceOutputFile
  }
  command <<<
    ssu-cmemit \
      ~{cmCmFile} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{true="-l" false="" lL} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="--devhelp" false="" devhelpDevhelp} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--ileaved" false="" iILeaved} \
      ~{if defined(tTFile) then ("--tfile " +  '"' + tTFile + '"') else ""} \
      ~{if defined(expExp) then ("--exp " +  '"' + expExp + '"') else ""} \
      ~{if defined(beginBegin) then ("--begin " +  '"' + beginBegin + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{sequenceSequenceOutputFile}
  >>>
}