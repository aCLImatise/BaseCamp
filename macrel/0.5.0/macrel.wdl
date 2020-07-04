version 1.0

task Macrel {
  input {
    Boolean? keep_fast_a_headers
    String? tmpdir
    Boolean? keep_negatives
    String? t
    String? o
    String? file_output
    String macrel_command_execute
  }
  command <<<
    macrel \
      ~{macrel_command_execute} \
      ~{true="--keep-fasta-headers" false="" keep_fast_a_headers} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{true="--keep-negatives" false="" keep_negatives} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(file_output) then ("--file-output " +  '"' + file_output + '"') else ""}
  >>>
  parameter_meta {
    keep_fast_a_headers: "Keep complete FASTA headers [get-smorfs command] (default: False)"
    tmpdir: "Temporary directory to use (default: $TMPDIR in the environment or /tmp) (default: None)"
    keep_negatives: "Whether to keep non-AMPs in the output (default: False)"
    t: ""
    o: ""
    file_output: ""
    macrel_command_execute: "Macrel command to execute (see documentation)"
  }
}