version 1.0

task GenomedataQueryBegin {
  input {
    String genome_data_query
    String gd_archive
    String track_name
    String chrom
    String begin
    String end
  }
  command <<<
    genomedata-query begin \
      ~{genome_data_query} \
      ~{gd_archive} \
      ~{track_name} \
      ~{chrom} \
      ~{begin} \
      ~{end}
  >>>
  parameter_meta {
    genome_data_query: ""
    gd_archive: ""
    track_name: ""
    chrom: ""
    begin: ""
    end: ""
  }
}