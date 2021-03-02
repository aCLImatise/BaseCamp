version 1.0

task FfindexOrder {
  input {
    String order_filename
    String data_filename
    String index_filename
    String sorted_data_out_file
    String sorted_index_out_file
  }
  command <<<
    ffindex_order \
      ~{order_filename} \
      ~{data_filename} \
      ~{index_filename} \
      ~{sorted_data_out_file} \
      ~{sorted_index_out_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0"
  }
  parameter_meta {
    order_filename: ""
    data_filename: ""
    index_filename: ""
    sorted_data_out_file: ""
    sorted_index_out_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}