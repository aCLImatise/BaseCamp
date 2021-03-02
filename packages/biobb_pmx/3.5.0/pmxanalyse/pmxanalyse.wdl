version 1.0

task Pmxanalyse {
  input {
    File? config
    File? input_a_x_vg_zip_path
    File? input_b_x_vg_zip_path
    File? output_result_path
    File? output_work_plot_path
  }
  command <<<
    pmxanalyse \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_a_x_vg_zip_path) then ("--input_a_xvg_zip_path " +  '"' + input_a_x_vg_zip_path + '"') else ""} \
      ~{if defined(input_b_x_vg_zip_path) then ("--input_b_xvg_zip_path " +  '"' + input_b_x_vg_zip_path + '"') else ""} \
      ~{if defined(output_result_path) then ("--output_result_path " +  '"' + output_result_path + '"') else ""} \
      ~{if defined(output_work_plot_path) then ("--output_work_plot_path " +  '"' + output_work_plot_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_pmx:3.5.0--py_0"
  }
  parameter_meta {
    config: "This file can be a YAML file, JSON file or JSON string"
    input_a_x_vg_zip_path: "Path the zip file containing the dgdl.xvg files of the A state. Accepted formats: zip."
    input_b_x_vg_zip_path: "Path the zip file containing the dgdl.xvg files of the B state. Accepted formats: zip."
    output_result_path: "Path to the TXT results file. Accepted formats: txt."
    output_work_plot_path: "Path to the PNG plot results file. Accepted formats: png.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_result_path = "${in_output_result_path}"
    File out_output_work_plot_path = "${in_output_work_plot_path}"
  }
}