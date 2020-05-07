version 1.0

task SeqFilters {
  input {
    String forwardForwardPrimers
    String maxMaxForward
    String geneGeneName
    String minMinLength
    String maxMaxNs
    String outdirOutdir
    String resultResultDirName
    String keepKeepPrimer
    String minMinQual
    String qualQualFile
    String reverseReversePrimers
    String maxMaxReverse
    String seqSeqFile
    Boolean skipSkipNotAg
    String tagTagFile
    String maxMaxLength
  }
  command <<<
    SeqFilters \
      ~{if defined(forwardForwardPrimers) then ("--forward-primers " +  '"' + forwardForwardPrimers + '"') else ""} \
      ~{if defined(maxMaxForward) then ("--max-forward " +  '"' + maxMaxForward + '"') else ""} \
      ~{if defined(geneGeneName) then ("--gene-name " +  '"' + geneGeneName + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(maxMaxNs) then ("--max-ns " +  '"' + maxMaxNs + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(resultResultDirName) then ("--result-dir-name " +  '"' + resultResultDirName + '"') else ""} \
      ~{if defined(keepKeepPrimer) then ("--keep-primer " +  '"' + keepKeepPrimer + '"') else ""} \
      ~{if defined(minMinQual) then ("--min-qual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(qualQualFile) then ("--qual-file " +  '"' + qualQualFile + '"') else ""} \
      ~{if defined(reverseReversePrimers) then ("--reverse-primers " +  '"' + reverseReversePrimers + '"') else ""} \
      ~{if defined(maxMaxReverse) then ("--max-reverse " +  '"' + maxMaxReverse + '"') else ""} \
      ~{if defined(seqSeqFile) then ("--seq-file " +  '"' + seqSeqFile + '"') else ""} \
      ~{true="--skip-notag" false="" skipSkipNotAg} \
      ~{if defined(tagTagFile) then ("--tag-file " +  '"' + tagTagFile + '"') else ""} \
      ~{if defined(maxMaxLength) then ("--max-length " +  '"' + maxMaxLength + '"') else ""}
  >>>
}