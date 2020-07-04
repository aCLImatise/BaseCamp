version 1.0

task Debinhex.pl {
  input {
    String? output_given_directory
    Boolean? verbose_output_normally
    File file
  }
  command <<<
    debinhex.pl \
      ~{file} \
      ~{if defined(output_given_directory) then ("-o " +  '"' + output_given_directory + '"') else ""} \
      ~{true="-v" false="" verbose_output_normally}
  >>>
  parameter_meta {
    output_given_directory: "Output in given directory (default outputs in file's directory)"
    verbose_output_normally: "Verbose output (normally just one line per file is shown)"
    file: ""
  }
}