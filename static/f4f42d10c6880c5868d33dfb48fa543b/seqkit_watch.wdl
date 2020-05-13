version 1.0

task SeqkitWatch {
  input {
    Int binsBins
    Int delayDelay
    Boolean dumpDump
    String fieldsFields
    String imgImg
    Boolean listListFields
    Boolean logLog
    Boolean passPass
    Int printPrintFreq
    Int qualQualAsciiBase
    Boolean quietQuietMode
    Boolean resetReset
    Boolean validateValidateSeq
    Int validateValidateSeqLength
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
    seqkit watch \
      ~{flagsFlags} \
      ~{if defined(binsBins) then ("--bins " +  '"' + binsBins + '"') else ""} \
      ~{if defined(delayDelay) then ("--delay " +  '"' + delayDelay + '"') else ""} \
      ~{true="--dump" false="" dumpDump} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(imgImg) then ("--img " +  '"' + imgImg + '"') else ""} \
      ~{true="--list-fields" false="" listListFields} \
      ~{true="--log" false="" logLog} \
      ~{true="--pass" false="" passPass} \
      ~{if defined(printPrintFreq) then ("--print-freq " +  '"' + printPrintFreq + '"') else ""} \
      ~{if defined(qualQualAsciiBase) then ("--qual-ascii-base " +  '"' + qualQualAsciiBase + '"') else ""} \
      ~{true="--quiet-mode" false="" quietQuietMode} \
      ~{true="--reset" false="" resetReset} \
      ~{true="--validate-seq" false="" validateValidateSeq} \
      ~{if defined(validateValidateSeqLength) then ("--validate-seq-length " +  '"' + validateValidateSeqLength + '"') else ""} \
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