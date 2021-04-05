version 1.0

task Gridss {
  input {
    Boolean? verbose
    Boolean? posix_output_format
    String? custom_format
    File? write_result_file
    Boolean? append_else_overwrite
    Boolean? vpa
    String time
    String prog
    String args
  }
  command <<<
    gridss \
      ~{time} \
      ~{prog} \
      ~{args} \
      ~{if (verbose) then "-v" else ""} \
      ~{if (posix_output_format) then "-p" else ""} \
      ~{if defined(custom_format) then ("-f " +  '"' + custom_format + '"') else ""} \
      ~{if defined(write_result_file) then ("-o " +  '"' + write_result_file + '"') else ""} \
      ~{if (append_else_overwrite) then "-a" else ""} \
      ~{if (vpa) then "-vpa" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gridss:2.11.0--hdfd78af_1"
  }
  parameter_meta {
    verbose: "Verbose"
    posix_output_format: "POSIX output format"
    custom_format: "Custom format"
    write_result_file: "Write result to FILE"
    append_else_overwrite: "Append (else overwrite)"
    vpa: ""
    time: ""
    prog: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}