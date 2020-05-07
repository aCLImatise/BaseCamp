version 1.0

task CleanPolishes {
  input {
    Boolean thresholdThreshold
    Boolean quietQuiet
    Boolean beforeBeforeAfter
    Boolean segregateSegregate
    Boolean gff3Gff3
    Boolean saveSaveJunk
  }
  command <<<
    cleanPolishes \
      ~{true="-threshold" false="" thresholdThreshold} \
      ~{true="-quiet" false="" quietQuiet} \
      ~{true="-beforeafter" false="" beforeBeforeAfter} \
      ~{true="-segregate" false="" segregateSegregate} \
      ~{true="-gff3" false="" gff3Gff3} \
      ~{true="-savejunk" false="" saveSaveJunk}
  >>>
}