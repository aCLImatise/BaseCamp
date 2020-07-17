version 1.0

task ConusFoldUNA {
  input {
    Boolean? options
    String conus_fold
    String seq_file_in
  }
  command <<<
    conus_fold UNA \
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