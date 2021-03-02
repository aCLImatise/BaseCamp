version 1.0

task ClusterIdentifier {
  input {
    String? r
    Int? s
    Int? m
    String? soft
    String? clipped
    String? bases
    String? reads
    String cram
  }
  command <<<
    cluster_identifier \
      ~{soft} \
      ~{clipped} \
      ~{bases} \
      ~{reads} \
      ~{cram} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/scramble:1.0.1--h516909a_0"
  }
  parameter_meta {
    r: ""
    s: ""
    m: ""
    soft: ""
    clipped: ""
    bases: ""
    reads: ""
    cram: ""
  }
  output {
    File out_stdout = stdout()
  }
}