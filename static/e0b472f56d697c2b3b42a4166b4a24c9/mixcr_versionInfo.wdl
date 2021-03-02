version 1.0

task MixcrVersionInfo {
  input {
    Boolean? verbose
    Boolean? no_warnings
    String scr
    String version_info
    String input_file
  }
  command <<<
    mixcr versionInfo \
      ~{scr} \
      ~{version_info} \
      ~{input_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_warnings) then "--no-warnings" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Verbose warning messages."
    no_warnings: "Suppress all warning messages."
    scr: ""
    version_info: ""
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}