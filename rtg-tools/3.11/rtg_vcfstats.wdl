version 1.0

task RtgVcfstats {
  input {
    String alleleAlleleLengths
  }
  command <<<
    rtg vcfstats \
      ~{if defined(alleleAlleleLengths) then ("--allele-lengths " +  '"' + alleleAlleleLengths + '"') else ""}
  >>>
}