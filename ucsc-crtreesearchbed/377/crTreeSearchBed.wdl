version 1.0

task CrTreeSearchBed {
  input {
    File file_dot_bed
    String index_do_tcr
    String chrom
    String start
    String end
  }
  command <<<
    crTreeSearchBed \
      ~{file_dot_bed} \
      ~{index_do_tcr} \
      ~{chrom} \
      ~{start} \
      ~{end}
  >>>
  parameter_meta {
    file_dot_bed: ""
    index_do_tcr: ""
    chrom: ""
    start: ""
    end: ""
  }
}