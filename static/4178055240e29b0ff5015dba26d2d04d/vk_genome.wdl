version 1.0

task VkGenome {
  input {
    Directory? directory
    String? ref
    String location
    String ncbi
    String wormbase
  }
  command <<<
    vk genome \
      ~{location} \
      ~{ncbi} \
      ~{wormbase} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcfkit:0.2.9--pyh5bfb8f1_0"
  }
  parameter_meta {
    directory: "Set Genome Directory"
    ref: ""
    location: ""
    ncbi: ""
    wormbase: ""
  }
  output {
    File out_stdout = stdout()
  }
}