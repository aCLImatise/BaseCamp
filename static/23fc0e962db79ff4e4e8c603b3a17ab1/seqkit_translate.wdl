version 1.0

task SeqkitTranslate {
  input {
    Boolean allowAllowUnknownCodon
    Boolean cleanClean
    String frameFrame
    Boolean inInItCodonAsM
    Int listListTranslTable
    Int listListTranslTableWithAmbCodons
    Int translTranslTable
    Boolean trimTrim
    Int alphabetAlphabetGuessSeqLength
    Boolean idIdNcbi
    String idIdRegexp
    String inInFileList
    Int lineLineWidth
    String outOutFile
    Boolean quietQuiet
    String seqSeqType
    Int threadsThreads
    String? flagsFlags
  }
  command <<<
    seqkit translate \
      ~{flagsFlags} \
      ~{true="--allow-unknown-codon" false="" allowAllowUnknownCodon} \
      ~{true="--clean" false="" cleanClean} \
      ~{if defined(frameFrame) then ("--frame " +  '"' + frameFrame + '"') else ""} \
      ~{true="--init-codon-as-M" false="" inInItCodonAsM} \
      ~{if defined(listListTranslTable) then ("--list-transl-table " +  '"' + listListTranslTable + '"') else ""} \
      ~{if defined(listListTranslTableWithAmbCodons) then ("--list-transl-table-with-amb-codons " +  '"' + listListTranslTableWithAmbCodons + '"') else ""} \
      ~{if defined(translTranslTable) then ("--transl-table " +  '"' + translTranslTable + '"') else ""} \
      ~{true="--trim" false="" trimTrim} \
      ~{if defined(alphabetAlphabetGuessSeqLength) then ("--alphabet-guess-seq-length " +  '"' + alphabetAlphabetGuessSeqLength + '"') else ""} \
      ~{true="--id-ncbi" false="" idIdNcbi} \
      ~{if defined(idIdRegexp) then ("--id-regexp " +  '"' + idIdRegexp + '"') else ""} \
      ~{if defined(inInFileList) then ("--infile-list " +  '"' + inInFileList + '"') else ""} \
      ~{if defined(lineLineWidth) then ("--line-width " +  '"' + lineLineWidth + '"') else ""} \
      ~{if defined(outOutFile) then ("--out-file " +  '"' + outOutFile + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(seqSeqType) then ("--seq-type " +  '"' + seqSeqType + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}