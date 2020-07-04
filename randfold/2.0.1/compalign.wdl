version 1.0

task Compalign {
  input {
    Boolean? only_compare_marked
    String? in_format
    Boolean? quiet
    Boolean? options
    String trusted_dot_ali
    String test_dot_ali
  }
  command <<<
    compalign \
      ~{trusted_dot_ali} \
      ~{test_dot_ali} \
      ~{true="-c" false="" only_compare_marked} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    only_compare_marked: ": only compare under marked #=CS consensus structure"
    in_format: ": specify that both alignments are in format <s> (MSF, for instance)"
    quiet: ": suppress verbose header (used in regression testing)"
    options: ""
    trusted_dot_ali: ""
    test_dot_ali: ""
  }
}