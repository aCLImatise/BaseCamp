version 1.0

task SixgillBuild {
  input {
    Int minlengthMinlength
    Int minMinQualScore
    String metaMetaGeneFile
    Int minMinMetaGeneScore
    Int minorMinorFLength
    Int minMinLongestTrypPepleN
    Int maxMaxReads
    Int minMinReadCount
    String outOut
    String outOutFastA
    Boolean noNoGzipOut
    Boolean debugDebug
    String? fastFastQFiles
  }
  command <<<
    sixgill_build \
      ~{fastFastQFiles} \
      ~{if defined(minlengthMinlength) then ("--minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{if defined(minMinQualScore) then ("--minqualscore " +  '"' + minMinQualScore + '"') else ""} \
      ~{if defined(metaMetaGeneFile) then ("--metagenefile " +  '"' + metaMetaGeneFile + '"') else ""} \
      ~{if defined(minMinMetaGeneScore) then ("--minmetagenescore " +  '"' + minMinMetaGeneScore + '"') else ""} \
      ~{if defined(minorMinorFLength) then ("--minorflength " +  '"' + minorMinorFLength + '"') else ""} \
      ~{if defined(minMinLongestTrypPepleN) then ("--minlongesttryppeplen " +  '"' + minMinLongestTrypPepleN + '"') else ""} \
      ~{if defined(maxMaxReads) then ("--maxreads " +  '"' + maxMaxReads + '"') else ""} \
      ~{if defined(minMinReadCount) then ("--minreadcount " +  '"' + minMinReadCount + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outOutFastA) then ("--outfasta " +  '"' + outOutFastA + '"') else ""} \
      ~{true="--nogzipout" false="" noNoGzipOut} \
      ~{true="--debug" false="" debugDebug}
  >>>
}