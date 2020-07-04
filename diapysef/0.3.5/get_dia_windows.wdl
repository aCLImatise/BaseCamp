version 1.0

task GetDiaWindows.py {
  input {
    String tims_analysis_directory
    String output_file
  }
  command <<<
    get_dia_windows.py \
      ~{tims_analysis_directory} \
      ~{output_file}
  >>>
  parameter_meta {
    tims_analysis_directory: ""
    output_file: ""
  }
}