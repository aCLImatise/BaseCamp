version 1.0

task SummarizeFlags.py {
  input {
    String? flags
    String? id
    String? out_summary
  }
  command <<<
    summarize_flags.py \
      ~{if defined(flags) then ("--flags " +  '"' + flags + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(out_summary) then ("--outSummary " +  '"' + out_summary + '"') else ""}
  >>>
  parameter_meta {
    flags: "Flag file."
    id: "Name of the column with unique identifiers."
    out_summary: "Output file for Summary."
  }
}