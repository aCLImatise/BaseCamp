version 1.0

task SamplotVcf {
  input {
    String vcfVcf
    String outOutDir
    String pedPed
    Boolean dnDnOnly
    Int minMinCallRate
    String filterFilter
    String outputOutputType
    Int maxMaxHeTs
    Int minMinEntries
    Int maxMaxEntries
    Int maxMaxMb
    Int minMinBp
    String importantImportantRegions
    Array[String]+ bamsBams
    Array[String]+ sampleSampleIds
    String commandCommandFile
    String formatFormat
    String gffGff
    String downDownSample
    Boolean manualManualRun
  }
  command <<<
    samplot vcf \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(pedPed) then ("--ped " +  '"' + pedPed + '"') else ""} \
      ~{true="--dn_only" false="" dnDnOnly} \
      ~{if defined(minMinCallRate) then ("--min_call_rate " +  '"' + minMinCallRate + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{if defined(outputOutputType) then ("--output_type " +  '"' + outputOutputType + '"') else ""} \
      ~{if defined(maxMaxHeTs) then ("--max_hets " +  '"' + maxMaxHeTs + '"') else ""} \
      ~{if defined(minMinEntries) then ("--min_entries " +  '"' + minMinEntries + '"') else ""} \
      ~{if defined(maxMaxEntries) then ("--max_entries " +  '"' + maxMaxEntries + '"') else ""} \
      ~{if defined(maxMaxMb) then ("--max_mb " +  '"' + maxMaxMb + '"') else ""} \
      ~{if defined(minMinBp) then ("--min_bp " +  '"' + minMinBp + '"') else ""} \
      ~{if defined(importantImportantRegions) then ("--important_regions " +  '"' + importantImportantRegions + '"') else ""} \
      ~{if defined(bamsBams) then ("--bams " +  '"' + bamsBams + '"') else ""} \
      ~{if defined(sampleSampleIds) then ("--sample_ids " +  '"' + sampleSampleIds + '"') else ""} \
      ~{if defined(commandCommandFile) then ("--command_file " +  '"' + commandCommandFile + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(downDownSample) then ("--downsample " +  '"' + downDownSample + '"') else ""} \
      ~{true="--manual_run" false="" manualManualRun}
  >>>
}