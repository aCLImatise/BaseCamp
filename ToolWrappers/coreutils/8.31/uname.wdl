version 1.0

task Uname {
  input {
    Boolean? all
    Boolean? kernel_name
    Boolean? node_name
    Boolean? kernel_release
    Boolean? kernel_version
    Boolean? machine
    Boolean? processor
    Boolean? hardware_platform
    Boolean? operating_system
  }
  command <<<
    uname \
      ~{if (all) then "--all" else ""} \
      ~{if (kernel_name) then "--kernel-name" else ""} \
      ~{if (node_name) then "--nodename" else ""} \
      ~{if (kernel_release) then "--kernel-release" else ""} \
      ~{if (kernel_version) then "--kernel-version" else ""} \
      ~{if (machine) then "--machine" else ""} \
      ~{if (processor) then "--processor" else ""} \
      ~{if (hardware_platform) then "--hardware-platform" else ""} \
      ~{if (operating_system) then "--operating-system" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: "print all information, in the following order,\\nexcept omit -p and -i if unknown:"
    kernel_name: "print the kernel name"
    node_name: "print the network node hostname"
    kernel_release: "print the kernel release"
    kernel_version: "print the kernel version"
    machine: "print the machine hardware name"
    processor: "print the processor type (non-portable)"
    hardware_platform: "print the hardware platform (non-portable)"
    operating_system: "print the operating system"
  }
  output {
    File out_stdout = stdout()
  }
}