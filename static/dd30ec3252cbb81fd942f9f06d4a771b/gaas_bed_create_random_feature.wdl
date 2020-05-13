version 1.0

task GaasBedCreateRandomFeature.pl {
  input {
    String genomeGenome
    Boolean sizeSize
    Boolean numberNumberGene
    Boolean sizeSizeGene
    String outputOutput
    String aA
    String asAs
    String theThe
    String aA
    String anAn
    String? gaasGaasCreateRandomFeaturePl
    String? 1000010000
  }
  command <<<
    gaas_bed_create_random_feature.pl \
      ~{gaasGaasCreateRandomFeaturePl} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{true="--size" false="" sizeSize} \
      ~{true="--number_gene" false="" numberNumberGene} \
      ~{true="--size_gene" false="" sizeSizeGene} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""} \
      ~{1000010000}
  >>>
}