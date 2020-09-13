version 1.0

task Sonicparanoidgettestdata {
  input {
    Directory? output_directory
    Boolean? debug
  }
  command <<<
    sonicparanoid_get_test_data \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    output_directory: "The directory in which the test data will be stored."
    debug: "Output debug information."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}