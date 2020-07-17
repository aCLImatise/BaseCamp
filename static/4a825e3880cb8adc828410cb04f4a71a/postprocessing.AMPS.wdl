version 1.0

task Postprocessing.AMPS.r {
  input {
    Boolean? rmaexdotoutdotfld
    Boolean? malte_x_dot_filter
    Boolean? threads
    Boolean? node_dot_list
    Boolean? heat_map_dot_json
  }
  command <<<
    postprocessing.AMPS.r \
      ~{true="--rmaex.out.fld" false="" rmaexdotoutdotfld} \
      ~{true="--maltex.filter" false="" malte_x_dot_filter} \
      ~{true="--threads" false="" threads} \
      ~{true="--node.list" false="" node_dot_list} \
      ~{true="--heatmap.json" false="" heat_map_dot_json}
  >>>
  parameter_meta {
    rmaexdotoutdotfld: "MALTextract output folder."
    malte_x_dot_filter: "MALTextract filter mode: <default,def_anc>. This script is not designed for 'scan' output. Default: <def_anc>."
    threads: "Max number of cores used."
    node_dot_list: "List (\n separated) of nodes to be reported on (aka input species/node list used for MALTextract)."
    heat_map_dot_json: "Optional exporting of heatmap data in json format."
  }
}