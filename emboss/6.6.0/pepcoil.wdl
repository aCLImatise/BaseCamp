version 1.0

task Pepcoil {
  input {
    Boolean? window
  }
  command <<<
    pepcoil \
      ~{true="-window" false="" window}
  >>>
  parameter_meta {
    window: "integer    [28] Window size (Integer from 7 to 28)"
  }
}