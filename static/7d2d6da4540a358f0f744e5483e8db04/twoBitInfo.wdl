version 1.0

task TwoBitInfo {
  input {
    String? mask_bed
    Boolean? n_bed
    Boolean? non_s
    Boolean? udc_dir
    Float input_dot_two_bit
  }
  command <<<
    twoBitInfo \
      ~{input_dot_two_bit} \
      ~{if defined(mask_bed) then ("-maskBed " +  '"' + mask_bed + '"') else ""} \
      ~{if (n_bed) then "-nBed" else ""} \
      ~{if (non_s) then "-noNs" else ""} \
      ~{if (udc_dir) then "-udcDir" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mask_bed: "of seq sizes, output BED records that define\\nareas with masked sequence"
    n_bed: "instead of seq sizes, output BED records that define\\nareas with N's in sequence"
    non_s: "outputs the length of each sequence, but does not count Ns"
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs"
    input_dot_two_bit: ""
  }
  output {
    File out_stdout = stdout()
  }
}