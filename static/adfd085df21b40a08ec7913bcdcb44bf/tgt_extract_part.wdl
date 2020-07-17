version 1.0

task TgtExtractPart.py {
  input {
    String? start_time_interval
    String? end_time_extracted
    String? path_output_file
    String tg_path
  }
  command <<<
    tgt-extract-part.py \
      ~{tg_path} \
      ~{if defined(start_time_interval) then ("-s " +  '"' + start_time_interval + '"') else ""} \
      ~{if defined(end_time_extracted) then ("-e " +  '"' + end_time_extracted + '"') else ""} \
      ~{if defined(path_output_file) then ("-o " +  '"' + path_output_file + '"') else ""}
  >>>
  parameter_meta {
    start_time_interval: "Start time of the interval to be extracted."
    end_time_extracted: "End time of the interval to be extracted."
    path_output_file: "Path to the output file. Defaults to the original path with _part appended to the filename."
    tg_path: "Path to the input TextGrid"
  }
}