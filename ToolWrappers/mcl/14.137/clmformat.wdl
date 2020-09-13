version 1.0

task Clmformat {
  input {
    File? icl
    File? imx
    File? tab
    String? pi
    String? tf
    Boolean? adapt
    Boolean? subgraph
    Boolean? lazy_tab
    File? zmm
    File? fmt
    Directory? dir
    Directory? in_fix
    Boolean? fancy
    Int? lump_count
    String? dump
    Boolean? dump_pairs
    Boolean? dump_measures
    String? dump_node_sep
    File? nsm
    File? ccm
    Boolean? help
    String options
  }
  command <<<
    clmformat \
      ~{options} \
      ~{if defined(icl) then ("-icl " +  '"' + icl + '"') else ""} \
      ~{if defined(imx) then ("-imx " +  '"' + imx + '"') else ""} \
      ~{if defined(tab) then ("-tab " +  '"' + tab + '"') else ""} \
      ~{if defined(pi) then ("-pi " +  '"' + pi + '"') else ""} \
      ~{if defined(tf) then ("-tf " +  '"' + tf + '"') else ""} \
      ~{if (adapt) then "--adapt" else ""} \
      ~{if (subgraph) then "--subgraph" else ""} \
      ~{if (lazy_tab) then "--lazy-tab" else ""} \
      ~{if defined(zmm) then ("-zmm " +  '"' + zmm + '"') else ""} \
      ~{if defined(fmt) then ("-fmt " +  '"' + fmt + '"') else ""} \
      ~{if defined(dir) then ("-dir " +  '"' + dir + '"') else ""} \
      ~{if defined(in_fix) then ("-infix " +  '"' + in_fix + '"') else ""} \
      ~{if (fancy) then "--fancy" else ""} \
      ~{if defined(lump_count) then ("-lump-count " +  '"' + lump_count + '"') else ""} \
      ~{if defined(dump) then ("-dump " +  '"' + dump + '"') else ""} \
      ~{if (dump_pairs) then "--dump-pairs" else ""} \
      ~{if (dump_measures) then "--dump-measures" else ""} \
      ~{if defined(dump_node_sep) then ("-dump-node-sep " +  '"' + dump_node_sep + '"') else ""} \
      ~{if defined(nsm) then ("-nsm " +  '"' + nsm + '"') else ""} \
      ~{if defined(ccm) then ("-ccm " +  '"' + ccm + '"') else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  parameter_meta {
    icl: "read clustering matrix from file"
    imx: "read graph matrix from file"
    tab: "read tab file"
    pi: "apply inflation to input graph"
    tf: "apply transformation to input graph"
    adapt: "allow non-matching domains and defective clusterings"
    subgraph: "take subgraph (when domains don't match)"
    lazy_tab: "allow mismatched tab-file"
    zmm: "use zoem definitions from this file"
    fmt: "write logical output to this file"
    dir: "use directory as base entry point, split output"
    in_fix: "insert <str> after base name or base directory"
    fancy: "use with -dump/--dump if you want html/txt files as well"
    lump_count: "batch size threshold for split behaviour"
    dump: "dump line-based output, default one cluster per line"
    dump_pairs: "write cluster/element pair per single line"
    dump_measures: "include performance measures in dump output"
    dump_node_sep: "the separator for node indices or node labels"
    nsm: "write node stickiness matrix to file"
    ccm: "write cluster cohesion matrix to file"
    help: "this info"
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_fmt = "${in_fmt}"
    Directory out_dir = "${in_dir}"
  }
}