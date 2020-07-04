version 1.0

task FfindexApply {
  input {
    Boolean? q
    Boolean? k
    String? d
    String? i
    String ff_index_apply_mpi
    String data_filename
    String index_filename
  }
  command <<<
    ffindex_apply \
      ~{ff_index_apply_mpi} \
      ~{data_filename} \
      ~{index_filename} \
      ~{true="-q" false="" q} \
      ~{true="-k" false="" k} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    q: ""
    k: ""
    d: ""
    i: ""
    ff_index_apply_mpi: ""
    data_filename: ""
    index_filename: ""
  }
}