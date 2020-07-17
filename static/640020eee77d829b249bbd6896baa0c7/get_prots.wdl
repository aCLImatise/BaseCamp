version 1.0

task GetProts.pl {
  input {
    Boolean? filter_include_string
    Boolean? filter_exclude_string
    Boolean? enable_debug_messages
  }
  command <<<
    get_prots.pl \
      ~{true="-I" false="" filter_include_string} \
      ~{true="-X" false="" filter_exclude_string} \
      ~{true="-d" false="" enable_debug_messages}
  >>>
  parameter_meta {
    filter_include_string: "Filter Include String"
    filter_exclude_string: "Filter Exclude String"
    enable_debug_messages: "Enable debug messages"
  }
}