version 1.0

task IncorporateVCF.py {
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
  }
  command <<<
    incorporateVCF.py \
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
      ~{true="--append-chromosome" false="" appendAppendChromosome}
  >>>
}