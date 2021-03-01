version 1.0

task HydramultishRun {
  input {
    Int? number_threads_use
    Int? punt_parameter_breakpoint
    File? stub_output_file
    String stub_file
  }
  command <<<
    hydra_multi_sh run \
      ~{stub_file} \
      ~{if defined(number_threads_use) then ("-t " +  '"' + number_threads_use + '"') else ""} \
      ~{if defined(punt_parameter_breakpoint) then ("-p " +  '"' + punt_parameter_breakpoint + '"') else ""} \
      ~{if defined(stub_output_file) then ("-o " +  '"' + stub_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0"
  }
  parameter_meta {
    number_threads_use: "Number of threads to use. [Default: 2]"
    punt_parameter_breakpoint: "The punt parameter for breakpoint assembly.\\nThis value will be multiplied by the number of datasets in the analysis.\\nRecommended: The  average read coverage of all datasets analyzed multipled by 5.\\nExample: 3 Datasets average 30x, the input value is 150.\\nThe default assumes 10x datasets [Default: 50]"
    stub_output_file: "The stub for the output file names"
    stub_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_stub_output_file = "${in_stub_output_file}"
  }
}