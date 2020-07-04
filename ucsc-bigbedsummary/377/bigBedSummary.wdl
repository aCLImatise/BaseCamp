version 1.0

task BigBedSummary {
  input {
    Boolean? udc_dir
    File file_dot_bb
    String chrom
    String start
    String end
    String data_points
  }
  command <<<
    bigBedSummary \
      ~{file_dot_bb} \
      ~{chrom} \
      ~{start} \
      ~{end} \
      ~{data_points} \
      ~{true="-udcDir" false="" udc_dir}
  >>>
  parameter_meta {
    udc_dir: "=/dir/to/cache - place to put cache for remote bigBed/bigWigs"
    file_dot_bb: ""
    chrom: ""
    start: ""
    end: ""
    data_points: ""
  }
}