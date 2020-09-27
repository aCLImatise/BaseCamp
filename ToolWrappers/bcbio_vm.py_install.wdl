version 1.0

task BcbioVmpyInstall {
  input {
    String? genomes
    String? aligners
    String? data_target
    Boolean? data
    Boolean? tools
    Boolean? wrapper
    String? image
    String? cores
  }
  command <<<
    bcbio_vm_py install \
      ~{if defined(genomes) then ("--genomes " +  '"' + genomes + '"') else ""} \
      ~{if defined(aligners) then ("--aligners " +  '"' + aligners + '"') else ""} \
      ~{if defined(data_target) then ("--datatarget " +  '"' + data_target + '"') else ""} \
      ~{if (data) then "--data" else ""} \
      ~{if (tools) then "--tools" else ""} \
      ~{if (wrapper) then "--wrapper" else ""} \
      ~{if defined(image) then ("--image " +  '"' + image + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    genomes: "Genomes to download"
    aligners: "Aligner indexes to download"
    data_target: "Data to install. Allows customization or install of\\nextra data."
    data: "Install or upgrade data dependencies"
    tools: "Install or upgrade tool dependencies"
    wrapper: "Update wrapper bcbio-nextgen-vm code"
    image: "Docker image name to use, could point to compatible\\npre-installed image."
    cores: "Cores to use for parallel data prep processes"
  }
  output {
    File out_stdout = stdout()
  }
}