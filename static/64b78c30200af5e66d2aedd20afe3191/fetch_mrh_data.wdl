version 1.0

task FetchMrhData {
  input {
    String chromChrom
    String chrom2Chrom2
    String startStart
    String startStart2
    String endEnd
    String end2End2
    Int maxMaxResolution
    Int minMinResolution
    Boolean textText
    String? heatHeatMap
    String? outputOutput
  }
  command <<<
    fetch_mrh_data \
      ~{heatHeatMap} \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(chrom2Chrom2) then ("--chrom2 " +  '"' + chrom2Chrom2 + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(startStart2) then ("--start2 " +  '"' + startStart2 + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(end2End2) then ("--end2 " +  '"' + end2End2 + '"') else ""} \
      ~{if defined(maxMaxResolution) then ("--max-resolution " +  '"' + maxMaxResolution + '"') else ""} \
      ~{if defined(minMinResolution) then ("--min-resolution " +  '"' + minMinResolution + '"') else ""} \
      ~{true="--text" false="" textText} \
      ~{outputOutput}
  >>>
}