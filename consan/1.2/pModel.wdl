version 1.0

task PModel {
  input {
    Boolean? options
    String mod_file
  }
  command <<<
    pModel \
      ~{mod_file} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    mod_file: ""
  }
}