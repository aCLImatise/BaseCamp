version 1.0

task MarkUniqueUnique {
  input {
    File? path_asm_file
    File? version_path_modify
    Int? minimum_size_default
    Int? number_instances_surrogate
    Int? max_number_bases
    String version
  }
  command <<<
    markUniqueUnique \
      ~{version} \
      ~{if defined(path_asm_file) then ("-a " +  '"' + path_asm_file + '"') else ""} \
      ~{if defined(version_path_modify) then ("-t " +  '"' + version_path_modify + '"') else ""} \
      ~{if defined(minimum_size_default) then ("-l " +  '"' + minimum_size_default + '"') else ""} \
      ~{if defined(number_instances_surrogate) then ("-n " +  '"' + number_instances_surrogate + '"') else ""} \
      ~{if defined(max_number_bases) then ("-d " +  '"' + max_number_bases + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_asm_file: "path to the assembly .asm file"
    version_path_modify: "version   path to the tigStore and version to modify"
    minimum_size_default: "minimum size of a unitig to be toggled, default=2000)"
    number_instances_surrogate: "number of instances of a surrogate that is toggled, default = 1"
    max_number_bases: "max number of bases the surrogate can be from the end of a scaffold for toggling, default = 1000"
    version: ""
  }
  output {
    File out_stdout = stdout()
  }
}