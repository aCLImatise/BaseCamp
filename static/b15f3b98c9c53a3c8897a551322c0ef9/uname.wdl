version 1.0

task Uname {
  input {
    String? all
    String? kernel_name
    String? node_name
    String? kernel_release
    Boolean? kernel_version
    Boolean? machine
    Boolean? processor
    Boolean? hardware_platform
    Boolean? operating_system
    String? option
  }
  command <<<
    uname \
      ~{option} \
      ~{if defined(all) then ("--all " +  '"' + all + '"') else ""} \
      ~{if defined(kernel_name) then ("--kernel-name " +  '"' + kernel_name + '"') else ""} \
      ~{if defined(node_name) then ("--nodename " +  '"' + node_name + '"') else ""} \
      ~{if defined(kernel_release) then ("--kernel-release " +  '"' + kernel_release + '"') else ""} \
      ~{true="--kernel-version" false="" kernel_version} \
      ~{true="--machine" false="" machine} \
      ~{true="--processor" false="" processor} \
      ~{true="--hardware-platform" false="" hardware_platform} \
      ~{true="--operating-system" false="" operating_system}
  >>>
  parameter_meta {
    all: "all information, in the following order, except omit -p and -i if unknown:"
    kernel_name: "the kernel name"
    node_name: "the network node hostname"
    kernel_release: "the kernel release"
    kernel_version: "print the kernel version"
    machine: "print the machine hardware name"
    processor: "print the processor type (non-portable)"
    hardware_platform: "print the hardware platform (non-portable)"
    operating_system: "print the operating system"
    option: ""
  }
}