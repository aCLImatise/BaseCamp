version 1.0

task SummarizeFlagspy {
  input {
    File? flags
    String? id
    File? out_summary
  }
  command <<<
    summarize_flags_py \
      ~{if defined(flags) then ("--flags " +  '"' + flags + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(out_summary) then ("--outSummary " +  '"' + out_summary + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    flags: "Flag file."
    id: "Name of the column with unique identifiers."
    out_summary: "Output file for Summary.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_summary = "${in_out_summary}"
  }
}