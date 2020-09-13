version 1.0

task CompressFast5 {
  input {
    Boolean? c
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
      ~{if (c) then "-c" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    c: ""
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