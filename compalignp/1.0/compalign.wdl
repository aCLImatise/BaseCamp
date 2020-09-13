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
      ~{if (only_compare_marked) then "-c" else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    only_compare_marked: ": only compare under marked #=CS consensus structure"
    in_format: ": specify that both alignments are in format <s> (MSF, for instance)"
    quiet: ": suppress verbose header (used in regression testing)"
    options: ""
    trusted_dot_ali: ""
    test_dot_ali: ""
  }
  output {
    File out_stdout = stdout()
  }
}