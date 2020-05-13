version 1.0

task Bmtool {
  input {
    Boolean quietQuiet
    Boolean fastFastAFile
    Boolean outputOutputFile
    Boolean giGiList
    Boolean inputInputFile
    Boolean fastFastAParseIds
    Boolean wordWordSize
    Boolean wordWordStep
    Boolean maxMaxAmb
    Boolean patternPattern
    Boolean maxMaxWordCount
    Boolean compressCompress
    Boolean extraExtraCompress
    Boolean packPackPrefixBits
    Boolean packPackOffsetBits
    Boolean packPackCountBits
    Boolean mmapMmap
    Boolean diffDiff
    Boolean slowSlow
    Boolean bitBitTest
  }
  command <<<
    bmtool \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--fasta-file" false="" fastFastAFile} \
      ~{true="--output-file" false="" outputOutputFile} \
      ~{true="--gi-list" false="" giGiList} \
      ~{true="--input-file" false="" inputInputFile} \
      ~{true="--fasta-parse-ids" false="" fastFastAParseIds} \
      ~{true="--word-size" false="" wordWordSize} \
      ~{true="--word-step" false="" wordWordStep} \
      ~{true="--max-amb" false="" maxMaxAmb} \
      ~{true="--pattern" false="" patternPattern} \
      ~{true="--max-word-count" false="" maxMaxWordCount} \
      ~{true="--compress" false="" compressCompress} \
      ~{true="--extra-compress" false="" extraExtraCompress} \
      ~{true="--pack-prefix-bits" false="" packPackPrefixBits} \
      ~{true="--pack-offset-bits" false="" packPackOffsetBits} \
      ~{true="--pack-count-bits" false="" packPackCountBits} \
      ~{true="--mmap" false="" mmapMmap} \
      ~{true="--diff" false="" diffDiff} \
      ~{true="--slow" false="" slowSlow} \
      ~{true="--bit-test" false="" bitBitTest}
  >>>
}