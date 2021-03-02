version 1.0

task TfrQcpy {
  input {
    Int? number_parallel_use
    String tfr_data_dir
  }
  command <<<
    tfr_qc_py \
      ~{tfr_data_dir} \
      ~{if defined(number_parallel_use) then ("-l " +  '"' + number_parallel_use + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    number_parallel_use: "Number of parallel threads to use [Default: 16]"
    tfr_data_dir: ""
  }
  output {
    File out_stdout = stdout()
  }
}