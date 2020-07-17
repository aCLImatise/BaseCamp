version 1.0

task Trnascan1.4 {
  input {
    Boolean? options
    String trnascan
    String seq_file
  }
  command <<<
    trnascan-1.4 \
      ~{trnascan} \
      ~{seq_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    trnascan: ""
    seq_file: ""
  }
}