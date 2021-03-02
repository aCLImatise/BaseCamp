version 1.0

task GenomedataqueryEnd {
  input {
    String genome_data_query
    String gd_archive
    String track_name
    String chrom
    String begin
    String end
  }
  command <<<
    genomedata_query end \
      ~{genome_data_query} \
      ~{gd_archive} \
      ~{track_name} \
      ~{chrom} \
      ~{begin} \
      ~{end}
  >>>
  runtime {
    docker: "quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0"
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