version 1.0

task Dexta {
  input {
    Boolean? vk
  }
  command <<<
    dexta \
      ~{true="-vk" false="" vk}
  >>>
  parameter_meta {
    vk: ""
  }
}