version 1.0

task Stubmaker.pl {
  input {
    Boolean? verbose_outputbe_quiet
    String? output_directory
  }
  command <<<
    stubmaker.pl \
      ~{true="-v" false="" verbose_outputbe_quiet} \
      ~{if defined(output_directory) then ("-d " +  '"' + output_directory + '"') else ""}
  >>>
  parameter_meta {
    verbose_outputbe_quiet: "Verbose Outputbe quiet"
    output_directory: "Output directory"
  }
}