version 1.0

task Arcs {
  input {
    File fofFofName
    Boolean multMultFile
    File fileFile
    String minMinReads
    String minMinLinks
    String minMinSize
    String baseBaseName
    File graphGraph
    String gapGap
    File tsvTsv
    File barcodeBarcodeCounts
    String indexIndexMultiplicity
    String maxMaxDegree
    String endEndLength
    String errorErrorPercent
    Boolean runRunVerbose
    String seqSeqId
    Boolean kKValue
    Boolean jJIndex
    Boolean threadsThreads
    String binBinSize
    Boolean distDistEst
    Boolean noNoDistEst
    Boolean distDistMedian
    Boolean distDistUpper
    File distDistTsv
    File samplesSamplesTsv
    Boolean pairPair
    String? optionsOptions
    String? listListOfAlignmentFiles
    String? orOr
  }
  command <<<
    arcs \
      ~{optionsOptions} \
      ~{if defined(fofFofName) then ("--fofName " +  '"' + fofFofName + '"') else ""} \
      ~{true="--multfile" false="" multMultFile} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(minMinReads) then ("--min_reads " +  '"' + minMinReads + '"') else ""} \
      ~{if defined(minMinLinks) then ("--min_links " +  '"' + minMinLinks + '"') else ""} \
      ~{if defined(minMinSize) then ("--min_size " +  '"' + minMinSize + '"') else ""} \
      ~{if defined(baseBaseName) then ("--base_name " +  '"' + baseBaseName + '"') else ""} \
      ~{if defined(graphGraph) then ("--graph " +  '"' + graphGraph + '"') else ""} \
      ~{if defined(gapGap) then ("--gap " +  '"' + gapGap + '"') else ""} \
      ~{if defined(tsvTsv) then ("--tsv " +  '"' + tsvTsv + '"') else ""} \
      ~{if defined(barcodeBarcodeCounts) then ("--barcode-counts " +  '"' + barcodeBarcodeCounts + '"') else ""} \
      ~{if defined(indexIndexMultiplicity) then ("--index_multiplicity " +  '"' + indexIndexMultiplicity + '"') else ""} \
      ~{if defined(maxMaxDegree) then ("--max_degree " +  '"' + maxMaxDegree + '"') else ""} \
      ~{if defined(endEndLength) then ("--end_length " +  '"' + endEndLength + '"') else ""} \
      ~{if defined(errorErrorPercent) then ("--error_percent " +  '"' + errorErrorPercent + '"') else ""} \
      ~{true="--run_verbose" false="" runRunVerbose} \
      ~{if defined(seqSeqId) then ("--seq_id " +  '"' + seqSeqId + '"') else ""} \
      ~{true="--k_value" false="" kKValue} \
      ~{true="--j_index" false="" jJIndex} \
      ~{true="--threads" false="" threadsThreads} \
      ~{if defined(binBinSize) then ("--bin_size " +  '"' + binBinSize + '"') else ""} \
      ~{true="--dist_est" false="" distDistEst} \
      ~{true="--no_dist_est" false="" noNoDistEst} \
      ~{true="--dist_median" false="" distDistMedian} \
      ~{true="--dist_upper" false="" distDistUpper} \
      ~{if defined(distDistTsv) then ("--dist_tsv " +  '"' + distDistTsv + '"') else ""} \
      ~{if defined(samplesSamplesTsv) then ("--samples_tsv " +  '"' + samplesSamplesTsv + '"') else ""} \
      ~{true="--pair" false="" pairPair} \
      ~{listListOfAlignmentFiles} \
      ~{orOr}
  >>>
}