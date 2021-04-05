version 1.0

task Mapseqpostlinksh {
  input {
    String d_load
  }
  command <<<
    _mapseq_post_link_sh \
      ~{d_load}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mapseq:1.2.6--h8dc0705_0"
  }
  parameter_meta {
    d_load: "Upload   Total   Spent    Left  Speed"
  }
  output {
    File out_stdout = stdout()
  }
}