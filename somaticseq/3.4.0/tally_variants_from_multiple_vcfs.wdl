version 1.0

task TallyVariantsFromMultipleVcfs.py {
  input {
    Array[String]+ vcfVcfFiles
    Array[String]+ bamBamFiles
    Array[String]+ sampleSampleNames
    Array[String]+ filterFilterLabels
    String bedBedInclusion
    String numNumThreads
    Int minimumMinimumSamples
  }
  command <<<
    tally_variants_from_multiple_vcfs.py \
      ~{if defined(vcfVcfFiles) then ("--vcf-files " +  '"' + vcfVcfFiles + '"') else ""} \
      ~{if defined(bamBamFiles) then ("--bam-files " +  '"' + bamBamFiles + '"') else ""} \
      ~{if defined(sampleSampleNames) then ("--sample-names " +  '"' + sampleSampleNames + '"') else ""} \
      ~{if defined(filterFilterLabels) then ("--filter-labels " +  '"' + filterFilterLabels + '"') else ""} \
      ~{if defined(bedBedInclusion) then ("--bed-inclusion " +  '"' + bedBedInclusion + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(minimumMinimumSamples) then ("--minimum-samples " +  '"' + minimumMinimumSamples + '"') else ""}
  >>>
}