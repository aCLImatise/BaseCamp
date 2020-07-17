version 1.0

task SonicparanoidGetTestData {
  input {
    String? output_directory
    Boolean? debug
  }
  command <<<
    sonicparanoid-get-test-data \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    output_directory: "The directory in which the test data will be stored."
    debug: "Output debug information."
  }
}