version 1.0

task MapChimericFragments.py {
  input {
    Boolean reverseReverseComplement
    String transcriptsTranscripts
    String distanceDistance
    String dustDustThr
    String dirDirOut
    String allAllReads
    Boolean addAddAllReads
    Boolean keepKeepCircular
    Int lengthLength
    Int maxMaxMismatches
    String allowedAllowedMismatches
    Boolean skipSkipMapping
    Int maxgMaxg
    String featureFeature
    String identifierIdentifier
    String bwaBwaExec
    String samSamToolsCmd
    String paramsParamsAln
    String samSamSeParams
    String? genomeGenomeFastA
    String? bamBamFiles
  }
  command <<<
    map_chimeric_fragments.py \
      ~{genomeGenomeFastA} \
      ~{true="--reverse_complement" false="" reverseReverseComplement} \
      ~{if defined(transcriptsTranscripts) then ("--transcripts " +  '"' + transcriptsTranscripts + '"') else ""} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(dustDustThr) then ("--dust_thr " +  '"' + dustDustThr + '"') else ""} \
      ~{if defined(dirDirOut) then ("--dirout " +  '"' + dirDirOut + '"') else ""} \
      ~{if defined(allAllReads) then ("--all_reads " +  '"' + allAllReads + '"') else ""} \
      ~{true="--add_all_reads" false="" addAddAllReads} \
      ~{true="--keep_circular" false="" keepKeepCircular} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{if defined(maxMaxMismatches) then ("--max_mismatches " +  '"' + maxMaxMismatches + '"') else ""} \
      ~{if defined(allowedAllowedMismatches) then ("--allowed_mismatches " +  '"' + allowedAllowedMismatches + '"') else ""} \
      ~{true="--skip_mapping" false="" skipSkipMapping} \
      ~{if defined(maxgMaxg) then ("--maxG " +  '"' + maxgMaxg + '"') else ""} \
      ~{if defined(featureFeature) then ("--feature " +  '"' + featureFeature + '"') else ""} \
      ~{if defined(identifierIdentifier) then ("--identifier " +  '"' + identifierIdentifier + '"') else ""} \
      ~{if defined(bwaBwaExec) then ("--bwa_exec " +  '"' + bwaBwaExec + '"') else ""} \
      ~{if defined(samSamToolsCmd) then ("--samtools_cmd " +  '"' + samSamToolsCmd + '"') else ""} \
      ~{if defined(paramsParamsAln) then ("--params_aln " +  '"' + paramsParamsAln + '"') else ""} \
      ~{if defined(samSamSeParams) then ("--samse_params " +  '"' + samSamSeParams + '"') else ""} \
      ~{bamBamFiles}
  >>>
}