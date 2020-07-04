version 1.0

task Dawg {
  input {
    Boolean? help_trick
    Boolean? arg_output_file
    String? seed
    String? reps
    Boolean? split
    Boolean? append
    Boolean? label
    String? arg_file
    String allowed
  }
  command <<<
    dawg \
      ~{allowed} \
      ~{true="--help-trick" false="" help_trick} \
      ~{true="-o" false="" arg_output_file} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(reps) then ("--reps " +  '"' + reps + '"') else ""} \
      ~{true="--split" false="" split} \
      ~{true="--append" false="" append} \
      ~{true="--label" false="" label} \
      ~{if defined(arg_file) then ("--arg-file " +  '"' + arg_file + '"') else ""}
  >>>
  parameter_meta {
    help_trick: "display description of common control variables"
    arg_output_file: "[ --output ] arg          output to this file"
    seed: "(=0)              PRNG seed"
    reps: "(=0)              the number of alignments to generate"
    split: "[=arg(=on)] (=null)  split output into separate files"
    append: "[=arg(=on)] (=null) append output to file"
    label: "[=arg(=on)] (=null)  label each simulation with a unique id"
    arg_file: "read arguments from file"
    allowed: ""
  }
}