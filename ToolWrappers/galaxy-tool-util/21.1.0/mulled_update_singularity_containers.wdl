version 1.0

task Mulledupdatesingularitycontainers {
  input {
    Array[String] containers
    File? container_list
    File? file_path
    File? installation
    Boolean? no_sudo
    File? testing
  }
  command <<<
    mulled_update_singularity_containers \
      ~{if defined(containers) then ("--containers " +  '"' + containers + '"') else ""} \
      ~{if defined(container_list) then ("--container-list " +  '"' + container_list + '"') else ""} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{if defined(installation) then ("--installation " +  '"' + installation + '"') else ""} \
      ~{if (no_sudo) then "--no-sudo" else ""} \
      ~{if defined(testing) then ("--testing " +  '"' + testing + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-tool-util:21.1.0--py_0"
  }
  parameter_meta {
    containers: "Containers to be generated. If the number of\\ncontainers is large, it may be simpler to use the\\n--containers-list option."
    container_list: "Name of file containing list of containers to be\\ngenerated. Alternative to --containers."
    file_path: "File path where newly-built Singularity containers are\\nplaced."
    installation: "File path of Singularity installation."
    no_sudo: "Build containers without sudo."
    testing: "Performs testing automatically - a name for the output\\nfile should be provided. (Alternatively, testing may\\nbe done using the separate testing tool.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_testing = "${in_testing}"
  }
}