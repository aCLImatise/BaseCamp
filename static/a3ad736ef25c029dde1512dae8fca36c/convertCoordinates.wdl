version 1.0

task ConvertCoordinates.pl {
  input {
    Boolean typeType
    Boolean pP
    Boolean minMinMatch
    Boolean directoryDirectory
    Boolean peaksPeaks
    Boolean tagsTags
    Boolean bedBed
    Boolean gtfGtf
  }
  command <<<
    convertCoordinates.pl \
      ~{true="-type" false="" typeType} \
      ~{true="-p" false="" pP} \
      ~{true="-minMatch" false="" minMinMatch} \
      ~{true="-directory" false="" directoryDirectory} \
      ~{true="-peaks" false="" peaksPeaks} \
      ~{true="-tags" false="" tagsTags} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-gtf" false="" gtfGtf}
  >>>
}