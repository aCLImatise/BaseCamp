version 1.0

task RtgHelpVcfstats {
  input {
    String alleleAlleleLengths
  }
  command <<<
    rtg help vcfstats \
      ~{if defined(alleleAlleleLengths) then ("--allele-lengths " +  '"' + alleleAlleleLengths + '"') else ""}
  >>>
}