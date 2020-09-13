version 1.0

task PanphlanDownloadPangenomepy {
  input {
    String? input_name
    String? var_output
    Boolean? verbose
  }
  command <<<
    panphlan_download_pangenome_py \
      ~{if defined(input_name) then ("--input_name " +  '"' + input_name + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_name: ""
    var_output: ""
    verbose: "Show progress information"
  }
  output {
    File out_stdout = stdout()
  }
}