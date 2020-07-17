version 1.0

task CsbPromix {
  input {
    String? components
    String? type
    String in_file
  }
  command <<<
    csb-promix \
      ~{in_file} \
      ~{if defined(components) then ("--components " +  '"' + components + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""}
  >>>
  parameter_meta {
    components: "Number of components (default=-1)"
    type: "Type of mixture (default=segments)"
    in_file: "input PDB file"
  }
}