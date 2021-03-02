version 1.0

task PanphlanDownloadPangenomepy {
  input {
    String? output_location
    Boolean? verbose
    Int? retry
    Int? wait
    String? input_name
  }
  command <<<
    panphlan_download_pangenome_py \
      ~{if defined(output_location) then ("--output " +  '"' + output_location + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(retry) then ("--retry " +  '"' + retry + '"') else ""} \
      ~{if defined(wait) then ("--wait " +  '"' + wait + '"') else ""} \
      ~{if defined(input_name) then ("--input_name " +  '"' + input_name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/panphlan:3.1--py_0"
  }
  parameter_meta {
    output_location: "output location"
    verbose: "Show progress information"
    retry: "Number of retry in pangenome download. Default is 5"
    wait: "Number of second spend waiting between download\\nretries. Default 60"
    input_name: "Name of species to download\\n"
  }
  output {
    File out_stdout = stdout()
  }
}