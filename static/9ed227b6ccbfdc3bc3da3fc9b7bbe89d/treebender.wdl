version 1.0

task Treebender {
  input {
    Boolean? _switch_r
    Boolean? given_value_default
    Boolean? most_recent_common
    Boolean? distance_cut_root
    String? nni
    String? arguments
  }
  command <<<
    treebender \
      ~{arguments} \
      ~{true="-a" false="" _switch_r} \
      ~{true="-u" false="" given_value_default} \
      ~{true="-V" false="" most_recent_common} \
      ~{true="-U" false="" distance_cut_root} \
      ~{if defined(nni) then ("--nni " +  '"' + nni + '"') else ""}
  >>>
  parameter_meta {
    _switch_r: "'\n' (default is ','). If the switch r is"
    given_value_default: "[value]                     given value, e.g. 3.5 (default 1.0)."
    most_recent_common: "[value:taxon_string]        most recent common ancestor of comma separated taxa. Separate clade with colon E.g. -V 3: Taxon_1,Taxon_2:Taxon_3,Taxon_4."
    distance_cut_root: "[value:cut off]             distance (cut off) from root with the given value (separated by colon), e.g. 2:40 (default 1.0:0.0)."
    nni: ", or --nni all."
    arguments: ""
  }
}