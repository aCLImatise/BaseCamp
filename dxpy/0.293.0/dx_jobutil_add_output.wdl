version 1.0

task DxJobutilAddOutput {
  input {
    Boolean classClass
    Boolean arrayArray
    String? classnameClassname
    String? nameName
    String? valueValue
  }
  command <<<
    dx-jobutil-add-output \
      ~{classnameClassname} \
      ~{true="--class" false="" classClass} \
      ~{true="--array" false="" arrayArray} \
      ~{nameName} \
      ~{valueValue}
  >>>
}