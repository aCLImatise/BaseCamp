version 1.0

task SummarizeFlags.py {
  input {
    String fF
    String idId
    String osOs
  }
  command <<<
    summarize_flags.py \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(idId) then ("-id " +  '"' + idId + '"') else ""} \
      ~{if defined(osOs) then ("-os " +  '"' + osOs + '"') else ""}
  >>>
}