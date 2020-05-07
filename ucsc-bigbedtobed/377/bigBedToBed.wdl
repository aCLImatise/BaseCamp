version 1.0

task BigBedToBed {
  input {
    String chromChrom
    String startStart
    String endEnd
    String maxMaxItems
    Boolean udcUdcDir
    String? inputInputBb
    String? outputOutputBed
  }
  command <<<
    bigBedToBed \
      ~{inputInputBb} \
      ~{if defined(chromChrom) then ("-chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(startStart) then ("-start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("-end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(maxMaxItems) then ("-maxItems " +  '"' + maxMaxItems + '"') else ""} \
      ~{true="-udcDir" false="" udcUdcDir} \
      ~{outputOutputBed}
  >>>
}