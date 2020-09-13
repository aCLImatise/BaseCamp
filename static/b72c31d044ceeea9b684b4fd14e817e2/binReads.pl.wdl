version 1.0

task BinReadspl {
  input {
    Int? width_bin_default
    Boolean? input_file_bed
    Boolean? minmapqthe_minimum_mapq
    Boolean? assume_bins_mouse
    Boolean? assume_bins_human
    Boolean? bin_reads_only
  }
  command <<<
    binReads_pl \
      ~{if defined(width_bin_default) then ("-b " +  '"' + width_bin_default + '"') else ""} \
      ~{if (input_file_bed) then "-B" else ""} \
      ~{if (minmapqthe_minimum_mapq) then "-q" else ""} \
      ~{if (assume_bins_mouse) then "-M" else ""} \
      ~{if (assume_bins_human) then "-H" else ""} \
      ~{if (bin_reads_only) then "-c" else ""}
  >>>
  parameter_meta {
    width_bin_default: "The width of the bin. Default is 1000bp."
    input_file_bed: "The input file is in BED format (the default is BAM)"
    minmapqthe_minimum_mapq: "MIN_MAPQ\\nThe minimum MAPQ score. Default is 30."
    assume_bins_mouse: "Assume all bins should be on mouse chromosomes. This is the default."
    assume_bins_human: "Assume all bins should be on human chromosomes."
    bin_reads_only: "\\\"chr1 chr2 ...\\\"\\nBin reads only from specified chromosomes.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}