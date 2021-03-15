version 1.0

task ProcessMinout {
  input {
    File? config
    File? input_log_path
    File? output_dat_path
  }
  command <<<
    process_minout \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_log_path) then ("--input_log_path " +  '"' + input_log_path + '"') else ""} \
      ~{if defined(output_dat_path) then ("--output_dat_path " +  '"' + output_dat_path + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biobb_amber:3.5.0--py_0"
  }
  parameter_meta {
    config: "Configuration file"
    input_log_path: "AMBER (sander) minimization output (log) file. Accepted formats: log, out, txt, o."
    output_dat_path: "Dat output file containing data from the specified terms along the minimization process. File type: output. Accepted formats: dat, txt, csv.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_input_log_path = "${in_input_log_path}"
    File out_output_dat_path = "${in_output_dat_path}"
  }
}