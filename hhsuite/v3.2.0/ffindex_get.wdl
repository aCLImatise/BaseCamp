version 1.0

task FfindexGet {
  input {
    String data_filename
    String index_filename
    String entry
    String name
  }
  command <<<
    ffindex_get \
      ~{data_filename} \
      ~{index_filename} \
      ~{entry} \
      ~{name}
  >>>
  parameter_meta {
    data_filename: ""
    index_filename: ""
    entry: ""
    name: ""
  }
}