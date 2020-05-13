version 1.0

task RefinemTaxonProfile {
  input {
    String perPerToClassify
    String evalueEvalue
    String perPerIdentity
    String perPerAlnLen
    String proteinProteinExt
    String tmpdirTmpdir
    String cpusCpus
    Boolean silentSilent
    String? genomeGenomeProtDir
    String? scaffoldScaffoldStatsFile
    String? dbDbFile
    String? taxonomyTaxonomyFile
    String? outputOutputDir
  }
  command <<<
    refinem taxon_profile \
      ~{genomeGenomeProtDir} \
      ~{if defined(perPerToClassify) then ("--per_to_classify " +  '"' + perPerToClassify + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(perPerIdentity) then ("--per_identity " +  '"' + perPerIdentity + '"') else ""} \
      ~{if defined(perPerAlnLen) then ("--per_aln_len " +  '"' + perPerAlnLen + '"') else ""} \
      ~{if defined(proteinProteinExt) then ("--protein_ext " +  '"' + proteinProteinExt + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{true="--silent" false="" silentSilent} \
      ~{scaffoldScaffoldStatsFile} \
      ~{dbDbFile} \
      ~{taxonomyTaxonomyFile} \
      ~{outputOutputDir}
  >>>
}