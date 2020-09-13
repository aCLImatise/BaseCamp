version 1.0

task ConusFoldYRN {
  input {
    Boolean? options
    String conus_fold
    String seq_file_in
  }
  command <<<
    conus_fold YRN \
      ~{conus_fold} \
      ~{seq_file_in} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    conus_fold: ""
    seq_file_in: ""
  }
  output {
    File out_stdout = stdout()
  }
}