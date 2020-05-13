version 1.0

task Speedtest.py {
  input {
    String nNFeatures
    String chunksizeChunksize
    String startStart
    String stopStop
    String chromChrom
    String typeType
    String prefixPrefix
    String plotPlotPrefix
    String binsBins
  }
  command <<<
    speedtest.py \
      ~{if defined(nNFeatures) then ("--nfeatures " +  '"' + nNFeatures + '"') else ""} \
      ~{if defined(chunksizeChunksize) then ("--chunksize " +  '"' + chunksizeChunksize + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(plotPlotPrefix) then ("--plot-prefix " +  '"' + plotPlotPrefix + '"') else ""} \
      ~{if defined(binsBins) then ("--bins " +  '"' + binsBins + '"') else ""}
  >>>
}