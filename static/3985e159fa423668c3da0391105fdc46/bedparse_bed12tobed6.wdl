version 1.0

task BedparseBed12tobed6 {
  input {
    Boolean appendAppendExn
    String whichWhichExon
    Boolean keepKeepIntrons
    String? bedBedFile
  }
  command <<<
    bedparse bed12tobed6 \
      ~{bedBedFile} \
      ~{true="--appendExN" false="" appendAppendExn} \
      ~{if defined(whichWhichExon) then ("--whichExon " +  '"' + whichWhichExon + '"') else ""} \
      ~{true="--keepIntrons" false="" keepKeepIntrons}
  >>>
}