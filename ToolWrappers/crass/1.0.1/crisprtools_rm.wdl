version 1.0

task CrisprtoolsRm {
  input {
    Array[String] comma_separated_list
    File? output_file_name
    Boolean? remove_associated_files
  }
  command <<<
    crisprtools rm \
      ~{if defined(comma_separated_list) then ("-g " +  '"' + comma_separated_list + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if (remove_associated_files) then "-r" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    comma_separated_list: "a comma separated list of group IDs that you would like to remove"
    output_file_name: "output file name. Default behaviour changes file inplace"
    remove_associated_files: "Remove associated files"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}