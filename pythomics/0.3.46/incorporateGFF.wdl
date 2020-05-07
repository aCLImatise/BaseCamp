version 1.0

task IncorporateGFF.py {
  input {
    String pP
    Boolean fF
    Boolean oO
    String vcfVcf
    Boolean noNoHomozygous
    Boolean heterozygousHeterozygous
    Boolean noNoSnps
    Boolean delsDels
    Boolean insIns
    String individualIndividual
    Boolean appendAppendChromosome
    String gffGff
    String groupGroupOn
    String featureFeature
    Boolean cufflinksCufflinks
    Boolean variantsVariantsOnly
    Boolean spliceSplicePartial
  }
  command <<<
    incorporateGFF.py \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{true="--no-homozygous" false="" noNoHomozygous} \
      ~{true="--heterozygous" false="" heterozygousHeterozygous} \
      ~{true="--no-snps" false="" noNoSnps} \
      ~{true="--dels" false="" delsDels} \
      ~{true="--ins" false="" insIns} \
      ~{if defined(individualIndividual) then ("--individual " +  '"' + individualIndividual + '"') else ""} \
      ~{true="--append-chromosome" false="" appendAppendChromosome} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(groupGroupOn) then ("--group-on " +  '"' + groupGroupOn + '"') else ""} \
      ~{if defined(featureFeature) then ("--feature " +  '"' + featureFeature + '"') else ""} \
      ~{true="--cufflinks" false="" cufflinksCufflinks} \
      ~{true="--variants-only" false="" variantsVariantsOnly} \
      ~{true="--splice-partial" false="" spliceSplicePartial}
  >>>
}