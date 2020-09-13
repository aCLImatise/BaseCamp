version 1.0

task CrTreeSearchBed {
  input {
    File file_dot_bed
    String index_do_tcr
    String chrom
    String start
  }
  command <<<
    crTreeSearchBed \
      ~{file_dot_bed} \
      ~{index_do_tcr} \
      ~{chrom} \
      ~{start}
  >>>
  parameter_meta {
    file_dot_bed: ""
    index_do_tcr: ""
    chrom: ""
    start: ""
  }
  output {
    File out_stdout = stdout()
  }
}