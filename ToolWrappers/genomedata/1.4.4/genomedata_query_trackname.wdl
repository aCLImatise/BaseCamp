version 1.0

task GenomedataqueryTrackname {
  input {
    String genome_data_query
    String gd_archive
    String track_name
    String chrom
    String begin
    String end
  }
  command <<<
    genomedata_query trackname \
      ~{genome_data_query} \
      ~{gd_archive} \
      ~{track_name} \
      ~{chrom} \
      ~{begin} \
      ~{end}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genome_data_query: ""
    gd_archive: ""
    track_name: ""
    chrom: ""
    begin: ""
    end: ""
  }
  output {
    File out_stdout = stdout()
  }
}