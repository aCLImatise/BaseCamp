version 1.0

task SvtyperSso {
  input {
    File inputInputVcf
    File outputOutputVcf
    File bamBam
    File refRefFastA
    File libLibInfo
    Int minMinAligned
    Int nN
    Boolean sumSumQuals
    Int maxMaxReads
    Int maxMaxCiDist
    Float splitSplitWeight
    Float discDiscWeight
    Int coresCores
    Int batchBatchSize
  }
  command <<<
    svtyper-sso \
      ~{if defined(inputInputVcf) then ("--input_vcf " +  '"' + inputInputVcf + '"') else ""} \
      ~{if defined(outputOutputVcf) then ("--output_vcf " +  '"' + outputOutputVcf + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(refRefFastA) then ("--ref_fasta " +  '"' + refRefFastA + '"') else ""} \
      ~{if defined(libLibInfo) then ("--lib_info " +  '"' + libLibInfo + '"') else ""} \
      ~{if defined(minMinAligned) then ("--min_aligned " +  '"' + minMinAligned + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{true="--sum_quals" false="" sumSumQuals} \
      ~{if defined(maxMaxReads) then ("--max_reads " +  '"' + maxMaxReads + '"') else ""} \
      ~{if defined(maxMaxCiDist) then ("--max_ci_dist " +  '"' + maxMaxCiDist + '"') else ""} \
      ~{if defined(splitSplitWeight) then ("--split_weight " +  '"' + splitSplitWeight + '"') else ""} \
      ~{if defined(discDiscWeight) then ("--disc_weight " +  '"' + discDiscWeight + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{if defined(batchBatchSize) then ("--batch_size " +  '"' + batchBatchSize + '"') else ""}
  >>>
}