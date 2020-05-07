version 1.0

task RefinemSsuErroneous {
  input {
    String genomeGenomeExt
    String evalueEvalue
    String concatenateConcatenate
    String commonCommonTaxOn
    String ssuSsuMinLen
    String ssuSsuDomain
    String ssuSsuPhylum
    String ssuSsuClass
    String ssuSsuOrder
    String ssuSsuFamily
    String ssuSsuGenus
    String cpusCpus
    Boolean silentSilent
    String? genomeGenomeNtDir
    String? taxTaxOnProfileDir
    String? ssuSsuDb
    String? ssuSsuTaxonomyFile
    String? outputOutputDir
  }
  command <<<
    refinem ssu_erroneous \
      ~{genomeGenomeNtDir} \
      ~{if defined(genomeGenomeExt) then ("--genome_ext " +  '"' + genomeGenomeExt + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(concatenateConcatenate) then ("--concatenate " +  '"' + concatenateConcatenate + '"') else ""} \
      ~{if defined(commonCommonTaxOn) then ("--common_taxon " +  '"' + commonCommonTaxOn + '"') else ""} \
      ~{if defined(ssuSsuMinLen) then ("--ssu_min_len " +  '"' + ssuSsuMinLen + '"') else ""} \
      ~{if defined(ssuSsuDomain) then ("--ssu_domain " +  '"' + ssuSsuDomain + '"') else ""} \
      ~{if defined(ssuSsuPhylum) then ("--ssu_phylum " +  '"' + ssuSsuPhylum + '"') else ""} \
      ~{if defined(ssuSsuClass) then ("--ssu_class " +  '"' + ssuSsuClass + '"') else ""} \
      ~{if defined(ssuSsuOrder) then ("--ssu_order " +  '"' + ssuSsuOrder + '"') else ""} \
      ~{if defined(ssuSsuFamily) then ("--ssu_family " +  '"' + ssuSsuFamily + '"') else ""} \
      ~{if defined(ssuSsuGenus) then ("--ssu_genus " +  '"' + ssuSsuGenus + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{true="--silent" false="" silentSilent} \
      ~{taxTaxOnProfileDir} \
      ~{ssuSsuDb} \
      ~{ssuSsuTaxonomyFile} \
      ~{outputOutputDir}
  >>>
}