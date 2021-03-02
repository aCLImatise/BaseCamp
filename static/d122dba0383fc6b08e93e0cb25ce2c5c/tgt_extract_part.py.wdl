version 1.0

task Tgtextractpartpy {
  input {
    String? start_time_extracted
    String? end_time_extracted
    File? path_output_file
  }
  command <<<
    tgt_extract_part_py \
      ~{if defined(start_time_extracted) then ("-s " +  '"' + start_time_extracted + '"') else ""} \
      ~{if defined(end_time_extracted) then ("-e " +  '"' + end_time_extracted + '"') else ""} \
      ~{if defined(path_output_file) then ("-o " +  '"' + path_output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    start_time_extracted: "Start time of the interval to be extracted."
    end_time_extracted: "End time of the interval to be extracted."
    path_output_file: "Path to the output file. Defaults to the original path with\\n_part appended to the filename.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}