version 1.0

task Pash3.0lx {
  input {
    Boolean verticalVerticalInput
    Boolean horizontalHorizontalInput
    Boolean diagonalsDiagonals
    Boolean patternPatternWeight
    Boolean patternPatternLength
    Boolean samplingSamplingPattern
    Boolean verticalVerticalWordOffset
    Boolean outputOutputFile
    Boolean scoreScore
    Boolean gzipGzip
    Boolean scratchScratch
    Boolean indexIndexMemory
    Boolean ignoreIgnoreList
    Boolean maxMaxMappings
    Boolean topTopPercent
    Boolean bisulfiteBisulfiteSeq
    Boolean highHighSensitivity
    Boolean mediumMediumSensitivity
    Boolean lowLowSensitivity
    Boolean fastFastMode
    String keepKeepHashedKmErsPercent
  }
  command <<<
    pash-3.0lx \
      ~{true="--verticalInput" false="" verticalVerticalInput} \
      ~{true="--horizontalInput" false="" horizontalHorizontalInput} \
      ~{true="--diagonals" false="" diagonalsDiagonals} \
      ~{true="--patternWeight" false="" patternPatternWeight} \
      ~{true="--patternLength" false="" patternPatternLength} \
      ~{true="--samplingPattern" false="" samplingSamplingPattern} \
      ~{true="--verticalWordOffset" false="" verticalVerticalWordOffset} \
      ~{true="--outputFile" false="" outputOutputFile} \
      ~{true="--score" false="" scoreScore} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--scratch" false="" scratchScratch} \
      ~{true="--indexMemory" false="" indexIndexMemory} \
      ~{true="--ignoreList" false="" ignoreIgnoreList} \
      ~{true="--maxMappings" false="" maxMaxMappings} \
      ~{true="--topPercent" false="" topTopPercent} \
      ~{true="--bisulfiteSeq" false="" bisulfiteBisulfiteSeq} \
      ~{true="--highSensitivity" false="" highHighSensitivity} \
      ~{true="--mediumSensitivity" false="" mediumMediumSensitivity} \
      ~{true="--lowSensitivity" false="" lowLowSensitivity} \
      ~{true="--fastMode" false="" fastFastMode} \
      ~{if defined(keepKeepHashedKmErsPercent) then ("--keepHashedKmersPercent " +  '"' + keepKeepHashedKmErsPercent + '"') else ""}
  >>>
}