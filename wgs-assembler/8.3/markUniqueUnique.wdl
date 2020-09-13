version 1.0

task MarkUniqueUnique {
  input {
    File? path_assembly_file
    File? version_path_tigstore
    Int? minimum_size_toggled
    Int? number_toggled_default
    Int? max_number_bases
    String version
  }
  command <<<
    markUniqueUnique \
      ~{version} \
      ~{if defined(path_assembly_file) then ("-a " +  '"' + path_assembly_file + '"') else ""} \
      ~{if defined(version_path_tigstore) then ("-t " +  '"' + version_path_tigstore + '"') else ""} \
      ~{if defined(minimum_size_toggled) then ("-l " +  '"' + minimum_size_toggled + '"') else ""} \
      ~{if defined(number_toggled_default) then ("-n " +  '"' + number_toggled_default + '"') else ""} \
      ~{if defined(max_number_bases) then ("-d " +  '"' + max_number_bases + '"') else ""}
  >>>
  parameter_meta {
    path_assembly_file: "path to the assembly .asm file"
    version_path_tigstore: "version   path to the tigStore and version to modify"
    minimum_size_toggled: "minimum size of a unitig to be toggled, default=2000)"
    number_toggled_default: "number of instances of a surrogate that is toggled, default = 1"
    max_number_bases: "max number of bases the surrogate can be from the end of a scaffold for toggling, default = 1000"
    version: ""
  }
  output {
    File out_stdout = stdout()
  }
}