version 1.0

task PostprocessingAMPSr {
  input {
    Directory? rmaexdotoutdotfld
    Boolean? malte_x_dot_filter
    Boolean? threads
    Boolean? node_dot_list
    Boolean? heat_map_dot_json
  }
  command <<<
    postprocessing_AMPS_r \
      ~{if (rmaexdotoutdotfld) then "--rmaex.out.fld" else ""} \
      ~{if (malte_x_dot_filter) then "--maltex.filter" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (node_dot_list) then "--node.list" else ""} \
      ~{if (heat_map_dot_json) then "--heatmap.json" else ""}
  >>>
  parameter_meta {
    rmaexdotoutdotfld: "MALTextract output folder."
    malte_x_dot_filter: "MALTextract filter mode: <default,def_anc>. This script is not designed for 'scan' output. Default: <def_anc>."
    threads: "Max number of cores used."
    node_dot_list: "List (\\n separated) of nodes to be reported on (aka input species/node list used for MALTextract)."
    heat_map_dot_json: "Optional exporting of heatmap data in json format."
  }
  output {
    File out_stdout = stdout()
    Directory out_rmaexdotoutdotfld = "${in_rmaexdotoutdotfld}"
  }
}