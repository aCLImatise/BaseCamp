version 1.0

task ConusFoldBK2 {
  input {
    Boolean? options
    String conus_fold
    String seq_file_in
  }
  command <<<
    conus_fold BK2 \
      ~{conus_fold} \
      ~{seq_file_in} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    conus_fold: ""
    seq_file_in: ""
  }
}