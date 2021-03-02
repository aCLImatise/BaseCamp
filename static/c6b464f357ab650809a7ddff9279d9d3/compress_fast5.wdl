version 1.0

task CompressFast5 {
  input {
    File? i
    String tool
    String for
    String changing
    String the
    String compression
    String of
    Int fast_five
    String files
  }
  command <<<
    compress_fast5 \
      ~{tool} \
      ~{for} \
      ~{changing} \
      ~{the} \
      ~{compression} \
      ~{of} \
      ~{fast_five} \
      ~{files} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i: ""
    tool: ""
    for: ""
    changing: ""
    the: ""
    compression: ""
    of: ""
    fast_five: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}