version 1.0

task Blast2gffBlastdb {
  input {
    String dbDbUsed
    Boolean noNoSplit
    String headerHeaderSep
    Int geneGeneIndex
    Boolean removeRemoveVersion
    File fastFastAFile
    Int dbDbQuality
    Float bitBitScore
    String attrAttrValue
    String featFeatType
    Boolean progressProgress
  }
  command <<<
    blast2gff blastdb \
      ~{if defined(dbDbUsed) then ("--db-used " +  '"' + dbDbUsed + '"') else ""} \
      ~{true="--no-split" false="" noNoSplit} \
      ~{if defined(headerHeaderSep) then ("--header-sep " +  '"' + headerHeaderSep + '"') else ""} \
      ~{if defined(geneGeneIndex) then ("--gene-index " +  '"' + geneGeneIndex + '"') else ""} \
      ~{true="--remove-version" false="" removeRemoveVersion} \
      ~{if defined(fastFastAFile) then ("--fasta-file " +  '"' + fastFastAFile + '"') else ""} \
      ~{if defined(dbDbQuality) then ("--db-quality " +  '"' + dbDbQuality + '"') else ""} \
      ~{if defined(bitBitScore) then ("--bitscore " +  '"' + bitBitScore + '"') else ""} \
      ~{if defined(attrAttrValue) then ("--attr-value " +  '"' + attrAttrValue + '"') else ""} \
      ~{if defined(featFeatType) then ("--feat-type " +  '"' + featFeatType + '"') else ""} \
      ~{true="--progress" false="" progressProgress}
  >>>
}