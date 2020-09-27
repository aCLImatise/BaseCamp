version 1.0

task GetDiaWindowspy {
  input {
    String tims_analysis_directory
    String output_file
  }
  command <<<
    get_dia_windows_py \
      ~{tims_analysis_directory} \
      ~{output_file}
  >>>
  parameter_meta {
    tims_analysis_directory: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}