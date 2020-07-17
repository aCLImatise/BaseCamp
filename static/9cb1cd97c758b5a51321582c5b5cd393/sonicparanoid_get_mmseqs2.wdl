version 1.0

task SonicparanoidGetMmseqs2 {
  input {
    String? output_directory
    Boolean? debug
  }
  command <<<
    sonicparanoid-get-mmseqs2 \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    output_directory: "The directory in which the source files of MMseqs2 will be stored."
    debug: "Output debug information."
  }
}