version 1.0

task Omicsdi {
  input {
    Directory? download
    Boolean? verbose
    Directory? var_output
    Directory? var_input
    String acc_number
  }
  command <<<
    omicsdi \
      ~{acc_number} \
      ~{if (download) then "--download" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ddipy:0.0.5--py_0"
  }
  parameter_meta {
    download: "Use this flag to download the files in the current\\ndirectory or a specified output directory"
    verbose: "Use this flag to display th extensions"
    var_output: "Output directory when downloading files (default: CWD)"
    var_input: "Output directory when downloading files (default: CWD)"
    acc_number: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_download = "${in_download}"
    Directory out_var_output = "${in_var_output}"
    Directory out_var_input = "${in_var_input}"
  }
}