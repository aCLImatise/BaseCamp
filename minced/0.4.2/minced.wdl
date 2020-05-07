version 1.0

task Minced {
  input {
    Boolean searchSearchWl
    Boolean minMinNr
    Boolean minMinRl
    Boolean maxMaxRl
    Boolean minsMinsL
    Boolean maxMaxSl
    Boolean gffGff
    Boolean gffGffFull
    Boolean spacersSpacers
    File? fileFileFa
    String? outputOutputFileTxt
    String? outputOutputFileGff
  }
  command <<<
    minced \
      ~{fileFileFa} \
      ~{true="-searchWL" false="" searchSearchWl} \
      ~{true="-minNR" false="" minMinNr} \
      ~{true="-minRL" false="" minMinRl} \
      ~{true="-maxRL" false="" maxMaxRl} \
      ~{true="-minSL" false="" minsMinsL} \
      ~{true="-maxSL" false="" maxMaxSl} \
      ~{true="-gff" false="" gffGff} \
      ~{true="-gffFull" false="" gffGffFull} \
      ~{true="-spacers" false="" spacersSpacers} \
      ~{outputOutputFileTxt} \
      ~{outputOutputFileGff}
  >>>
}