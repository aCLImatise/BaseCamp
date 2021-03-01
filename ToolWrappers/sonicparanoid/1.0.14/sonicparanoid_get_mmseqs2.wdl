version 1.0

task Sonicparanoidgetmmseqs2 {
  input {
    Directory? output_directory
    Boolean? debug
  }
  command <<<
    sonicparanoid_get_mmseqs2 \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_directory: "The directory in which the source files of MMseqs2\\nwill be stored."
    debug: "Output debug information."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}