version 1.0

task Flowclrstatspy {
  input {
    File? file_locations_flow
    File? o
    File? p
    String flow_stats
  }
  command <<<
    flowclrstats_py \
      ~{flow_stats} \
      ~{if defined(file_locations_flow) then ("-i " +  '"' + file_locations_flow + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    file_locations_flow: "File locations for flow clr file."
    o: "Path to the directory for the output file."
    p: "Path to the directory for the output file."
    flow_stats: ""
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
    File out_p = "${in_p}"
  }
}