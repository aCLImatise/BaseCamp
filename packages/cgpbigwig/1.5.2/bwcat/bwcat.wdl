version 1.0

task Bwcat {
  input {
    Boolean? input_path
    Boolean? region
    Boolean? include_na
    File? var_output
  }
  command <<<
    bwcat \
      ~{if (input_path) then "--input-path" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (include_na) then "--include-na" else ""} \
      ~{if (var_output) then "--output" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cgpbigwig:1.5.2--h93d22ca_0"
  }
  parameter_meta {
    input_path: "[file]                          Path to the input bigwig file"
    region: "[string]                            Region or bw file to print to screen format. NB start should be 0 based: (contig:start-stop)"
    include_na: "Include NA regions in output"
    var_output: "[file]                              File to write bw output to [default: stdout]"
  }
  output {
    File out_stdout = stdout()
    File out_var_output = "${in_var_output}"
  }
}