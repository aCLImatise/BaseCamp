version 1.0

task RenameFromFastash {
  input {
    File? file_to_rename
    Int? fata_file_finally
    Int? fata_names_replaced
    File? directory_optional_default
    File? file_name_added
    File? file_used_fasta
    String? usage_message
  }
  command <<<
    rename_from_fasta_sh \
      ~{if defined(file_to_rename) then ("-i " +  '"' + file_to_rename + '"') else ""} \
      ~{if defined(fata_file_finally) then ("-1 " +  '"' + fata_file_finally + '"') else ""} \
      ~{if defined(fata_names_replaced) then ("-2 " +  '"' + fata_names_replaced + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(file_name_added) then ("-f " +  '"' + file_name_added + '"') else ""} \
      ~{if defined(file_used_fasta) then ("-d " +  '"' + file_used_fasta + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidid:1.6.5--hdfd78af_0"
  }
  parameter_meta {
    file_to_rename: "file to rename"
    fata_file_finally: "fata file whose names will be finally printed"
    fata_names_replaced: "fata file whose names will be replaced"
    directory_optional_default: "directory (optional). By default the file is replaced in the same location"
    file_name_added: "file name (\\\".rename\\\" will be added at the end)"
    file_used_fasta: "file to be used if fasta files are not supplied"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}