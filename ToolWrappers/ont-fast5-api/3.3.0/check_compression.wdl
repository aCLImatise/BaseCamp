version 1.0

task CheckCompression {
  input {
    File? input_path
    Boolean? check_all_reads
    Boolean? recursive
    String tool
    String for
    String checking
    String the
    String compression
    String type
    String of
    String raw
    String data
    String in
    Int fast_five
    String files
  }
  command <<<
    check_compression \
      ~{tool} \
      ~{for} \
      ~{checking} \
      ~{the} \
      ~{compression} \
      ~{type} \
      ~{of} \
      ~{raw} \
      ~{data} \
      ~{in} \
      ~{fast_five} \
      ~{files} \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{if (check_all_reads) then "--check_all_reads" else ""} \
      ~{if (recursive) then "--recursive" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ont-fast5-api:3.3.0--py_0"
  }
  parameter_meta {
    input_path: "Path to Fast5 file or directory of Fast5 files"
    check_all_reads: "Check all reads in a file individually (default: check\\nonly the first read)"
    recursive: "Search recursively through folders for MultiRead fast5"
    tool: ""
    for: ""
    checking: ""
    the: ""
    compression: ""
    type: ""
    of: ""
    raw: ""
    data: ""
    in: ""
    fast_five: ""
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}