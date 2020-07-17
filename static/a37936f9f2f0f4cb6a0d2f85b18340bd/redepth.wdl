version 1.0

task Redepth.pl {
  input {
    Boolean? str_input_name
    Boolean? str_output_bam
    Boolean? str_cnv_region
    Boolean? str_bam_file
    Boolean? boleen_verbose_output
  }
  command <<<
    redepth.pl \
      ~{true="-i" false="" str_input_name} \
      ~{true="-o" false="" str_output_bam} \
      ~{true="-b" false="" str_cnv_region} \
      ~{true="-m" false="" str_bam_file} \
      ~{true="-v" false="" boleen_verbose_output}
  >>>
  parameter_meta {
    str_input_name: "<str>   input BAM file name. "
    str_output_bam: "<str>   output BAM file name."
    str_cnv_region: "<str>   CNV region file name. It's a 4 column plain text file with colum 1-4 as chrom, start, end, copy number prediction."
    str_bam_file: "<str>   if your bam file RNAME has mate information '/1' or '/2', set it to 1. Otherwise 0. Default 1 for BSMAP alignment. "
    boleen_verbose_output: "<boleen>        verbose output  [0 or 1, default 0] "
  }
}