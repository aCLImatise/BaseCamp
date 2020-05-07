version 1.0

task SnpParser {
  input {
    String outputOutputFile
    Int minMinQual
    Int minMinFreq
    Int minMinReads
    String gffGffFile
    String vcfVcfFile
    String referenceReference
    String samplesSamplesId
    String covCovSuff
    Boolean bcfBcfToolsVcf
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean citeCite
    Boolean manualManual
  }
  command <<<
    snp_parser \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(minMinQual) then ("--min-qual " +  '"' + minMinQual + '"') else ""} \
      ~{if defined(minMinFreq) then ("--min-freq " +  '"' + minMinFreq + '"') else ""} \
      ~{if defined(minMinReads) then ("--min-reads " +  '"' + minMinReads + '"') else ""} \
      ~{if defined(gffGffFile) then ("--gff-file " +  '"' + gffGffFile + '"') else ""} \
      ~{if defined(vcfVcfFile) then ("--vcf-file " +  '"' + vcfVcfFile + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(samplesSamplesId) then ("--samples-id " +  '"' + samplesSamplesId + '"') else ""} \
      ~{if defined(covCovSuff) then ("--cov-suff " +  '"' + covCovSuff + '"') else ""} \
      ~{true="--bcftools-vcf" false="" bcfBcfToolsVcf} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--cite" false="" citeCite} \
      ~{true="--manual" false="" manualManual}
  >>>
}