version 1.0

task AquilaStLFRStep1 {
  input {
    String fastFastQFile
    String bamBamFile
    String vcfVcfFile
    String chrChrStart
    String chrChrEnd
    String sampleSampleName
    String outOutDir
    String uniqUniqMapDir
    String numNumThreads
    String blockBlockThreshold
    String blockBlockLenUse
  }
  command <<<
    Aquila_stLFR_step1 \
      ~{if defined(fastFastQFile) then ("--fastq_file " +  '"' + fastFastQFile + '"') else ""} \
      ~{if defined(bamBamFile) then ("--bam_file " +  '"' + bamBamFile + '"') else ""} \
      ~{if defined(vcfVcfFile) then ("--vcf_file " +  '"' + vcfVcfFile + '"') else ""} \
      ~{if defined(chrChrStart) then ("--chr_start " +  '"' + chrChrStart + '"') else ""} \
      ~{if defined(chrChrEnd) then ("--chr_end " +  '"' + chrChrEnd + '"') else ""} \
      ~{if defined(sampleSampleName) then ("--sample_name " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(outOutDir) then ("--out_dir " +  '"' + outOutDir + '"') else ""} \
      ~{if defined(uniqUniqMapDir) then ("--uniq_map_dir " +  '"' + uniqUniqMapDir + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(blockBlockThreshold) then ("--block_threshold " +  '"' + blockBlockThreshold + '"') else ""} \
      ~{if defined(blockBlockLenUse) then ("--block_len_use " +  '"' + blockBlockLenUse + '"') else ""}
  >>>
}