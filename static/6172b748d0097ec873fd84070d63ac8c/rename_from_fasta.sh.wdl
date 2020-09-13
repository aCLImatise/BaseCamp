version 1.0

task RenameFromFastash {
  input {
    File? file_to_rename
    Int? fata_file_finally
    Int? names_will_replaced
    File? directory_optional_default
    File? file_name_will
    File? file_used_supplied
    String? v
    String? usage_message
  }
  command <<<
    rename_from_fasta_sh \
      ~{if defined(file_to_rename) then ("-i " +  '"' + file_to_rename + '"') else ""} \
      ~{if defined(fata_file_finally) then ("-1 " +  '"' + fata_file_finally + '"') else ""} \
      ~{if defined(names_will_replaced) then ("-2 " +  '"' + names_will_replaced + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(file_name_will) then ("-f " +  '"' + file_name_will + '"') else ""} \
      ~{if defined(file_used_supplied) then ("-d " +  '"' + file_used_supplied + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    file_to_rename: "file to rename"
    fata_file_finally: "fata file whose names will be finally printed"
    names_will_replaced: "fata file whose names will be replaced"
    directory_optional_default: "directory (optional). By default the file is replaced in the same location"
    file_name_will: "file name (\\\".rename\\\" will be added at the end)"
    file_used_supplied: "file to be used if fasta files are not supplied"
    v: ""
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}