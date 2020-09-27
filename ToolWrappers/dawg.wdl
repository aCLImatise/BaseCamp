version 1.0

task Dawg {
  input {
    Boolean? help_trick
    File? arg_output_file
    Int? seed
    Int? reps
    Boolean? split
    File? append
    Boolean? label
    File? arg_file
    Boolean? var_8
    String allowed
    String arg
    String display
    String read
    String arguments
    String description
    String help
    String var_16
    String version
    String from
    String of
    String to
    String common
    String this
    String control
  }
  command <<<
    dawg \
      ~{allowed} \
      ~{arg} \
      ~{display} \
      ~{read} \
      ~{arguments} \
      ~{description} \
      ~{help} \
      ~{var_16} \
      ~{version} \
      ~{from} \
      ~{of} \
      ~{to} \
      ~{common} \
      ~{this} \
      ~{control} \
      ~{if (help_trick) then "--help-trick" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(reps) then ("--reps " +  '"' + reps + '"') else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (append) then "--append" else ""} \
      ~{if (label) then "--label" else ""} \
      ~{if defined(arg_file) then ("--arg-file " +  '"' + arg_file + '"') else ""} \
      ~{if (var_8) then "--output" else ""}
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
    var_8: ""
    allowed: ""
    arg: ""
    display: ""
    read: ""
    arguments: ""
    description: ""
    help: ""
    var_16: ""
    version: ""
    from: ""
    of: ""
    to: ""
    common: ""
    this: ""
    control: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
    File out_append = "${in_append}"
  }
}