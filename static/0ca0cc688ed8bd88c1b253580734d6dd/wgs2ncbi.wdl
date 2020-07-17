version 1.0

task Wgs2ncbi {
  input {
    Boolean? conf
    String? action
    String? config
    File? file
  }
  command <<<
    wgs2ncbi \
      ~{action} \
      ~{config} \
      ~{file} \
      ~{true="-conf" false="" conf}
  >>>
  parameter_meta {
    conf: ""
    action: ""
    config: ""
    file: ""
  }
}