version 1.0

task SrfInfo {
  input {
    String? count_goodbad_reads
    String? level
    String var_input
  }
  command <<<
    srf_info \
      ~{var_input} \
      ~{if defined(count_goodbad_reads) then ("-l " +  '"' + count_goodbad_reads + '"') else ""} \
      ~{if defined(level) then ("-level " +  '"' + level + '"') else ""}
  >>>
  parameter_meta {
    count_goodbad_reads: "1 Count of good/bad reads. 2 Counts for selected chunk types. 4 Trace count and trace name prefix for each trace_header. 8 Base count."
    level: ""
    var_input: ""
  }
}