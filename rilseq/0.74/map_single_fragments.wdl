version 1.0

task MapSingleFragments.py {
  input {
    String genesGenesGff
    Boolean reverseReverseComplement
    String featureFeature
    String identifierIdentifier
    String overlapOverlap
    String allowedAllowedMismatches
    String outOutHead
    String dirDirOut
    String bwaBwaExec
    String samSamToolsCmd
    String paramsParamsAln
    String sampeSampeParams
    String samSamSeParams
    Boolean createCreateWig
    String? genomeGenomeFastA
  }
  command <<<
    map_single_fragments.py \
      ~{genomeGenomeFastA} \
      ~{if defined(genesGenesGff) then ("--genes_gff " +  '"' + genesGenesGff + '"') else ""} \
      ~{true="--reverse_complement" false="" reverseReverseComplement} \
      ~{if defined(featureFeature) then ("--feature " +  '"' + featureFeature + '"') else ""} \
      ~{if defined(identifierIdentifier) then ("--identifier " +  '"' + identifierIdentifier + '"') else ""} \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(allowedAllowedMismatches) then ("--allowed_mismatches " +  '"' + allowedAllowedMismatches + '"') else ""} \
      ~{if defined(outOutHead) then ("--outhead " +  '"' + outOutHead + '"') else ""} \
      ~{if defined(dirDirOut) then ("--dirout " +  '"' + dirDirOut + '"') else ""} \
      ~{if defined(bwaBwaExec) then ("--bwa_exec " +  '"' + bwaBwaExec + '"') else ""} \
      ~{if defined(samSamToolsCmd) then ("--samtools_cmd " +  '"' + samSamToolsCmd + '"') else ""} \
      ~{if defined(paramsParamsAln) then ("--params_aln " +  '"' + paramsParamsAln + '"') else ""} \
      ~{if defined(sampeSampeParams) then ("--sampe_params " +  '"' + sampeSampeParams + '"') else ""} \
      ~{if defined(samSamSeParams) then ("--samse_params " +  '"' + samSamSeParams + '"') else ""} \
      ~{true="--create_wig" false="" createCreateWig}
  >>>
}