version 1.0

task SeqkitSubseq {
  input {
    String bedBed
    String chrChr
    Int downDownStream
    String featureFeature
    String gtfGtf
    String gtfGtfTag
    Boolean onlyOnlyFlank
    String regionRegion
    Int upUpStream
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
    seqkit subseq \
      ~{flagsFlags} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(chrChr) then ("--chr " +  '"' + chrChr + '"') else ""} \
      ~{if defined(downDownStream) then ("--down-stream " +  '"' + downDownStream + '"') else ""} \
      ~{if defined(featureFeature) then ("--feature " +  '"' + featureFeature + '"') else ""} \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(gtfGtfTag) then ("--gtf-tag " +  '"' + gtfGtfTag + '"') else ""} \
      ~{true="--only-flank" false="" onlyOnlyFlank} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(upUpStream) then ("--up-stream " +  '"' + upUpStream + '"') else ""} \
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