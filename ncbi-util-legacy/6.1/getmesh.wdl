version 1.0

task Getmesh {
  input {
    Boolean? output_list
  }
  command <<<
    getmesh \
      ~{true="-o" false="" output_list}
  >>>
  parameter_meta {
    output_list: "Output list [File Out]"
  }
}