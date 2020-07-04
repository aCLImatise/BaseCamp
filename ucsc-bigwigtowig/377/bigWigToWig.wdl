version 1.0

task BigWigToWig {
  input {
    String? chrom
    String? start
    String? end
    Boolean? udc_dir
    String in_dot_bigwig
    String out_do_twig
  }
  command <<<
    bigWigToWig \
      ~{in_dot_bigwig} \
      ~{out_do_twig} \
      ~{if defined(chrom) then ("-chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(start) then ("-start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("-end " +  '"' + end + '"') else ""} \
      ~{true="-udcDir" false="" udc_dir}
  >>>
  parameter_meta {
    chrom: "- if set restrict output to given chromosome"
    start: "- if set, restrict output to only that over start"
    end: "- if set, restict output to only that under end"
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs"
    in_dot_bigwig: ""
    out_do_twig: ""
  }
}