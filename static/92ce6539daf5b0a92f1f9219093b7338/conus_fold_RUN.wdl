version 1.0

task ConusFoldRUN {
  input {
    Boolean? options
    String conus_fold
    String seq_file_in
  }
  command <<<
    conus_fold RUN \
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