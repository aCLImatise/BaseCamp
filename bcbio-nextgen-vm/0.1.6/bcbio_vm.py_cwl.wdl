version 1.0

task BcbioVmpyCwl {
  input {
    File? system_config
    String? add_container_tag
  }
  command <<<
    bcbio_vm_py cwl \
      ~{if defined(system_config) then ("--systemconfig " +  '"' + system_config + '"') else ""} \
      ~{if defined(add_container_tag) then ("--add-container-tag " +  '"' + add_container_tag + '"') else ""}
  >>>
  parameter_meta {
    system_config: "Global YAML configuration file specifying system\\ndetails. Defaults to installed bcbio_system.yaml."
    add_container_tag: "Add a container revision tag to CWL ('quay_lookup`\\nretrieves lates from quay.io)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}