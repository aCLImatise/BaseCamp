version 1.0

task PreSegemehl.pl {
  input {
    File? file_containing_files
    File? diegoformated_annotation_file
    File? output_file_name
    File? usefull_help_message
  }
  command <<<
    pre_segemehl.pl \
      ~{if defined(file_containing_files) then ("-l " +  '"' + file_containing_files + '"') else ""} \
      ~{if defined(diegoformated_annotation_file) then ("-a " +  '"' + diegoformated_annotation_file + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(usefull_help_message) then ("-h " +  '"' + usefull_help_message + '"') else ""}
  >>>
  parameter_meta {
    file_containing_files: "file containing input files and ids id [tab] path.to/file"
    diegoformated_annotation_file: "DIEGO-formated annotation file "
    output_file_name: "output file name (default:junction_table_DIEGO )"
    usefull_help_message: "this (usefull) help message"
  }
}