version 1.0

task Imseq2ting {
  input {
    Directory? im_seq_folder
    File? path_output_directory
  }
  command <<<
    imseq2ting \
      ~{if defined(im_seq_folder) then ("--imseq_folder " +  '"' + im_seq_folder + '"') else ""} \
      ~{if defined(path_output_directory) then ("--output " +  '"' + path_output_directory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    im_seq_folder: "Path to directory containing imseq repertoires as act-\\nfile"
    path_output_directory: "Path to output directory\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_directory = "${in_path_output_directory}"
  }
}