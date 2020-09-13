version 1.0

task Stubmakerpl {
  input {
    Boolean? verbose_outputbe_quiet
    Directory? output_directory
  }
  command <<<
    stubmaker_pl \
      ~{if (verbose_outputbe_quiet) then "-v" else ""} \
      ~{if defined(output_directory) then ("-d " +  '"' + output_directory + '"') else ""}
  >>>
  parameter_meta {
    verbose_outputbe_quiet: "Verbose Outputbe quiet"
    output_directory: "Output directory"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}