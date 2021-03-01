version 1.0

task BasenjiMotifsDenovopy {
  command <<<
    basenji_motifs_denovo_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}