version 1.0

task Nucdiff {
  input {
    Boolean relocRelocDist
    Boolean nucNucMerOpt
    Boolean filterFilterOpt
    Boolean deltaDeltaFile
    Boolean procProc
    Boolean refRefNameFull
    Boolean queryQueryNameFull
    Boolean vcfVcf
    String? outputOutputDir
    String? prefixPrefix
  }
  command <<<
    nucdiff \
      ~{outputOutputDir} \
      ~{true="--reloc_dist" false="" relocRelocDist} \
      ~{true="--nucmer_opt" false="" nucNucMerOpt} \
      ~{true="--filter_opt" false="" filterFilterOpt} \
      ~{true="--delta_file" false="" deltaDeltaFile} \
      ~{true="--proc" false="" procProc} \
      ~{true="--ref_name_full" false="" refRefNameFull} \
      ~{true="--query_name_full" false="" queryQueryNameFull} \
      ~{true="--vcf" false="" vcfVcf} \
      ~{prefixPrefix}
  >>>
}