version 1.0

task FlowcraftInspect {
  input {
    File? specify_trace_file
    String? set_refresh_frequency
    String? url
    Boolean? pretty
    String functions
  }
  command <<<
    flowcraft inspect \
      ~{functions} \
      ~{if defined(specify_trace_file) then ("-i " +  '"' + specify_trace_file + '"') else ""} \
      ~{if defined(set_refresh_frequency) then ("-r " +  '"' + set_refresh_frequency + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if (pretty) then "--pretty" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_trace_file: "Specify the nextflow trace file."
    set_refresh_frequency: "Set the refresh frequency for the continuous inspect"
    url: "Specify the URL to where the data should be broadcast"
    pretty: "Pretty inspection mode that removes usual reporting\\nprocesses.\\n"
    functions: "-m {overview,broadcast}, --mode {overview,broadcast}"
  }
  output {
    File out_stdout = stdout()
  }
}