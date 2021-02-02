version 1.0

task BigWigSummary {
  input {
    Int? type
    Boolean? udc_dir
    File file_dot_bigwig
    String chrom
    String start
    String end
  }
  command <<<
    bigWigSummary \
      ~{file_dot_bigwig} \
      ~{chrom} \
      ~{start} \
      ~{end} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if (udc_dir) then "-udcDir" else ""}
  >>>
  parameter_meta {
    type: "where X is one of:\\nmean - average value in region (default)\\nmin - minimum value in region\\nmax - maximum value in region\\nstd - standard deviation in region\\ncoverage - % of region that is covered"
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs"
    file_dot_bigwig: ""
    chrom: ""
    start: ""
    end: ""
  }
  output {
    File out_stdout = stdout()
  }
}