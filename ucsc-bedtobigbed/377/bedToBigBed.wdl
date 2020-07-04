version 1.0

task BedToBigBed {
  input {
    Boolean? sizes_is_two_bit
    Boolean? udc_dir
    String in_dot_bed
    String chrom_dot_sizes
    String out_dot_bb
  }
  command <<<
    bedToBigBed \
      ~{in_dot_bed} \
      ~{chrom_dot_sizes} \
      ~{out_dot_bb} \
      ~{true="-sizesIs2Bit" false="" sizes_is_two_bit} \
      ~{true="-udcDir" false="" udc_dir}
  >>>
  parameter_meta {
    sizes_is_two_bit: "-- If set, the chrom.sizes file is assumed to be a 2bit file."
    udc_dir: "=/path/to/udcCacheDir  -- sets the UDC cache dir for caching of remote files."
    in_dot_bed: ""
    chrom_dot_sizes: ""
    out_dot_bb: ""
  }
}