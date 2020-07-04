version 1.0

task DxJobutilAddOutput {
  input {
    Boolean? class
    Boolean? var_array
  }
  command <<<
    dx-jobutil-add-output \
      ~{true="--class" false="" class} \
      ~{true="--array" false="" var_array}
  >>>
  parameter_meta {
    class: ""
    var_array: ""
  }
}