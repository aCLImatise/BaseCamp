version 1.0

task BigWigToWig {
  input {
    String chromChrom
    String startStart
    String endEnd
    Boolean udcUdcDir
    String? inInBigwig
    String? outOutWig
  }
  command <<<
    bigWigToWig \
      ~{inInBigwig} \
      ~{if defined(chromChrom) then ("-chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(startStart) then ("-start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("-end " +  '"' + endEnd + '"') else ""} \
      ~{true="-udcDir" false="" udcUdcDir} \
      ~{outOutWig}
  >>>
}