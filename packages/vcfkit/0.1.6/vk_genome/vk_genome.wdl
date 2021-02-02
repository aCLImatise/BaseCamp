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