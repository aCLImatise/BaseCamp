version 1.0

task CovermShellcompletionFLAGS {
  input {
    File? output_file
  }
  command <<<
    coverm shell_completion FLAGS \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coverm:0.6.0--hc216eb9_0"
  }
  parameter_meta {
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}