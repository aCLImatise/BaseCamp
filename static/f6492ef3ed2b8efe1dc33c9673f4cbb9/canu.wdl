version 1.0

task Canu {
  input {
    Boolean pacPacBioHifi
    Boolean haplotypeHaplotype
    Boolean correctCorrect
    Boolean trimTrim
    Boolean assembleAssemble
    String trimTrimAssemble
    String ignoreIgnore
    String ignoreIgnore
    String haplotypeHaplotypeNanny
    String haplotypeHaplotypeBilly
  }
  command <<<
    canu \
      ~{true="-pacbio-hifi" false="" pacPacBioHifi} \
      ~{true="-haplotype" false="" haplotypeHaplotype} \
      ~{true="-correct" false="" correctCorrect} \
      ~{true="-trim" false="" trimTrim} \
      ~{true="-assemble" false="" assembleAssemble} \
      ~{if defined(trimTrimAssemble) then ("-trim-assemble " +  '"' + trimTrimAssemble + '"') else ""} \
      ~{if defined(ignoreIgnore) then ("- Ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{if defined(ignoreIgnore) then ("- Ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{if defined(haplotypeHaplotypeNanny) then ("-haplotypeNANNY " +  '"' + haplotypeHaplotypeNanny + '"') else ""} \
      ~{if defined(haplotypeHaplotypeBilly) then ("-haplotypeBILLY " +  '"' + haplotypeHaplotypeBilly + '"') else ""}
  >>>
}