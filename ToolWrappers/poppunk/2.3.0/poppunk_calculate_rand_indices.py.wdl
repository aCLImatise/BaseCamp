version 1.0

task PoppunkCalculateRandIndicespy {
  command <<<
    poppunk_calculate_rand_indices_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/poppunk:2.3.0--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}