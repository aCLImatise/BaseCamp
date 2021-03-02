version 1.0

task Frequencypy {
  input {
    File? detail_filename
    File? final_filename
    File? config_filename
    Boolean? print_column_headers
  }
  command <<<
    frequency_py \
      ~{if defined(detail_filename) then ("-d " +  '"' + detail_filename + '"') else ""} \
      ~{if defined(final_filename) then ("-f " +  '"' + final_filename + '"') else ""} \
      ~{if defined(config_filename) then ("-c " +  '"' + config_filename + '"') else ""} \
      ~{if (print_column_headers) then "-x" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    detail_filename: "detail filename"
    final_filename: "final filename"
    config_filename: "config filename"
    print_column_headers: "do not print column headers"
  }
  output {
    File out_stdout = stdout()
  }
}