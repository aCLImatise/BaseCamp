version 1.0

task Csbpromix {
  input {
    Int? components
    String? type
    Int positional_arguments
    String in_file
  }
  command <<<
    csb_promix \
      ~{positional_arguments} \
      ~{in_file} \
      ~{if defined(components) then ("--components " +  '"' + components + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""}
  >>>
  parameter_meta {
    components: "Number of components (default=-1)"
    type: "Type of mixture (default=segments)\\n"
    positional_arguments: "positional arguments:"
    in_file: "input PDB file"
  }
  output {
    File out_stdout = stdout()
  }
}