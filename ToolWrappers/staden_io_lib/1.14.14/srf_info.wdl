version 1.0

task SrfInfo {
  input {
    Int? count_goodbad_reads
    String? level
    String var_input
  }
  command <<<
    srf_info \
      ~{var_input} \
      ~{if defined(count_goodbad_reads) then ("-l " +  '"' + count_goodbad_reads + '"') else ""} \
      ~{if defined(level) then ("-level " +  '"' + level + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0"
  }
  parameter_meta {
    count_goodbad_reads: "1 Count of good/bad reads.\\n2 Counts for selected chunk types.\\n4 Trace count and trace name prefix for each trace_header.\\n8 Base count.\\n"
    level: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}