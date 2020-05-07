version 1.0

task SequenzaUtilsSnp2seqz {
  input {
    String outputOutput
    String vcfVcf
    String gcGc
    String vcfVcfDepth
    Boolean vcfVcfSamples
    String vcfVcfAlleles
    String presetPreset
    String homHom
    String hetHet
    String hetHetF
    String tabTabIx
    String nN
  }
  command <<<
    sequenza-utils snp2seqz \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(gcGc) then ("-gc " +  '"' + gcGc + '"') else ""} \
      ~{if defined(vcfVcfDepth) then ("--vcf-depth " +  '"' + vcfVcfDepth + '"') else ""} \
      ~{true="--vcf-samples" false="" vcfVcfSamples} \
      ~{if defined(vcfVcfAlleles) then ("--vcf-alleles " +  '"' + vcfVcfAlleles + '"') else ""} \
      ~{if defined(presetPreset) then ("--preset " +  '"' + presetPreset + '"') else ""} \
      ~{if defined(homHom) then ("--hom " +  '"' + homHom + '"') else ""} \
      ~{if defined(hetHet) then ("--het " +  '"' + hetHet + '"') else ""} \
      ~{if defined(hetHetF) then ("--het_f " +  '"' + hetHetF + '"') else ""} \
      ~{if defined(tabTabIx) then ("--tabix " +  '"' + tabTabIx + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""}
  >>>
}