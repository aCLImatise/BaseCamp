version 1.0

task FfindexApply {
  input {
    File? i
    File? d
    Boolean? k
    Boolean? q
    String data_filename
    String index_filename
  }
  command <<<
    ffindex_apply \
      ~{data_filename} \
      ~{index_filename} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if (k) then "-k" else ""} \
      ~{if (q) then "-q" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ffindex:0.98--hc9558a2_0"
  }
  parameter_meta {
    i: ""
    d: ""
    k: ""
    q: ""
    data_filename: "Input ffindex data file."
    index_filename: "Input ffindex index file."
  }
  output {
    File out_stdout = stdout()
    File out_i = "${in_i}"
    File out_d = "${in_d}"
  }
}