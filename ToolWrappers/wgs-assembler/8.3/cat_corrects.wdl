version 1.0

task Catcorrects {
  input {
    File? file_containing_names
    File? output_file
  }
  command <<<
    cat_corrects \
      ~{if defined(file_containing_names) then ("-L " +  '"' + file_containing_names + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_containing_names: "a file containing names of erate files"
    output_file: "output file"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}