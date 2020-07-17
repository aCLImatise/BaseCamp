version 1.0

task TwoBitInfo {
  input {
    Boolean? n_bed
    Boolean? non_s
    Boolean? udc_dir
    String input_dot_two_bit
    String output_dot_tab
  }
  command <<<
    twoBitInfo \
      ~{input_dot_two_bit} \
      ~{output_dot_tab} \
      ~{true="-nBed" false="" n_bed} \
      ~{true="-noNs" false="" non_s} \
      ~{true="-udcDir" false="" udc_dir}
  >>>
  parameter_meta {
    n_bed: "instead of seq sizes, output BED records that define  areas with N's in sequence"
    non_s: "outputs the length of each sequence, but does not count Ns "
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs"
    input_dot_two_bit: ""
    output_dot_tab: ""
  }
}