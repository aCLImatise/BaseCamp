version 1.0

task BigWigInfo {
  input {
    Boolean? udc_dir
    Boolean? chrom_s
    Boolean? zooms
    Boolean? minmax
    File file_dot_bw
  }
  command <<<
    bigWigInfo \
      ~{file_dot_bw} \
      ~{true="-udcDir" false="" udc_dir} \
      ~{true="-chroms" false="" chrom_s} \
      ~{true="-zooms" false="" zooms} \
      ~{true="-minMax" false="" minmax}
  >>>
  parameter_meta {
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs"
    chrom_s: "- list all chromosomes and their sizes"
    zooms: "- list all zoom levels and their sizes"
    minmax: "- list the min and max on a single line"
    file_dot_bw: ""
  }
}