version 1.0

task ConusCompareBJK {
  input {
    Boolean? options
    String conus_compare
    Int test_file_two
  }
  command <<<
    conus_compare BJK \
      ~{conus_compare} \
      ~{test_file_two} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    options: ""
    conus_compare: ""
    test_file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}