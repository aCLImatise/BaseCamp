version 1.0

task SpadesAssemblysh {
  input {
    Int? var_0
    Int? var_1
    Int? supplied_numbers_sepparated
    Directory? directory_optional
    File? name
    String? name_mandatory
    String? name_optional_unset
    Directory? look_supplied_term
    String? mode_remove_folders
    Int? _default
    String? usage_message
  }
  command <<<
    spades_assembly_sh \
      ~{if defined(var_0) then ("-p " +  '"' + var_0 + '"') else ""} \
      ~{if defined(var_1) then ("-P " +  '"' + var_1 + '"') else ""} \
      ~{if defined(supplied_numbers_sepparated) then ("-k " +  '"' + supplied_numbers_sepparated + '"') else ""} \
      ~{if defined(directory_optional) then ("-o " +  '"' + directory_optional + '"') else ""} \
      ~{if defined(name) then ("-f " +  '"' + name + '"') else ""} \
      ~{if defined(name_mandatory) then ("-s " +  '"' + name_mandatory + '"') else ""} \
      ~{if defined(name_optional_unset) then ("-g " +  '"' + name_optional_unset + '"') else ""} \
      ~{if defined(look_supplied_term) then ("-q " +  '"' + look_supplied_term + '"') else ""} \
      ~{if defined(mode_remove_folders) then ("-c " +  '"' + mode_remove_folders + '"') else ""} \
      ~{if defined(_default) then ("-T " +  '"' + _default + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_0: "file (mandatory)"
    var_1: "file (mandatory)"
    supplied_numbers_sepparated: ", supplied as numbers sepparated by number or one flag per number, default: 21,33,55,77,99,127"
    directory_optional: "directory (optional)"
    name: "name"
    name_mandatory: "name (mandatory)"
    name_optional_unset: "name (optional). If unset, samples will be gathered in NO_GROUP group"
    look_supplied_term: ": look for files in a folder SUPPLIED with \\\"paired\\\" term"
    mode_remove_folders: "mode: remove unnecesary temporary folders"
    _default: ", default 1"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}