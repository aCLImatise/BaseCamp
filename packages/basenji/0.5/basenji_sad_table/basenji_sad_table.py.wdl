version 1.0

task BasenjiSadTablepy {
  input {
    File? compute_quantiles_using
    Int sad_h_five_file
  }
  command <<<
    basenji_sad_table_py \
      ~{sad_h_five_file} \
      ~{if defined(compute_quantiles_using) then ("-q " +  '"' + compute_quantiles_using + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    compute_quantiles_using: "Compute quantiles using separated SAD HDF5."
    sad_h_five_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}