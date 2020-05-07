version 1.0

task SeqkitSeq {
  input {
    Boolean colorColor
    Boolean complementComplement
    Boolean dna2rnaDna2rna
    String gapGapLetters
    Boolean lowerLowerCase
    Int maxMaxLen
    Float maxMaxQual
    Int minMinLen
    Float minMinQual
    Boolean nameName
    Boolean onlyOnlyId
    Boolean qualQual
    Int qualQualAsciiBase
    Boolean removeRemoveGaps
    Boolean reverseReverse
    Boolean rna2dnaRna2dna
    Boolean seqSeq
    Boolean upperUpperCase
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
    seqkit seq \
      ~{flagsFlags} \
      ~{true="--color" false="" colorColor} \
      ~{true="--complement" false="" complementComplement} \
      ~{true="--dna2rna" false="" dna2rnaDna2rna} \
      ~{if defined(gapGapLetters) then ("--gap-letters " +  '"' + gapGapLetters + '"') else ""} \
      ~{true="--lower-case" false="" lowerLowerCase} \
      ~{if defined(maxMaxLen) then ("--max-len " +  '"' + maxMaxLen + '"') else ""} \
      ~{if defined(maxMaxQual) then ("--max-qual " +  '"' + maxMaxQual + '"') else ""} \
      ~{if defined(minMinLen) then ("--min-len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(minMinQual) then ("--min-qual " +  '"' + minMinQual + '"') else ""} \
      ~{true="--name" false="" nameName} \
      ~{true="--only-id" false="" onlyOnlyId} \
      ~{true="--qual" false="" qualQual} \
      ~{if defined(qualQualAsciiBase) then ("--qual-ascii-base " +  '"' + qualQualAsciiBase + '"') else ""} \
      ~{true="--remove-gaps" false="" removeRemoveGaps} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--rna2dna" false="" rna2dnaRna2dna} \
      ~{true="--seq" false="" seqSeq} \
      ~{true="--upper-case" false="" upperUpperCase} \
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