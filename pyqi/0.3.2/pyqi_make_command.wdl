version 1.0

task PyqiMakeCommand {
  input {
    String? name
    String? output_fp
  }
  command <<<
    pyqi make-command \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""}
  >>>
  parameter_meta {
    name: "the name of the Command [REQUIRED]"
    output_fp: "output filepath to store generated Python code [REQUIRED]"
  }
}