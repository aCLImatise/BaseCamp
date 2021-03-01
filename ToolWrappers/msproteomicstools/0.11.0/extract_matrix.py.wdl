version 1.0

task ExtractMatrixpy {
  input {
    File? in
    String? out
    Array[String] columns
  }
  command <<<
    extract_matrix_py \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1"
  }
  parameter_meta {
    in: "feature aligner file"
    out: "output matrix"
    columns: "Which columns are written\\n"
  }
  output {
    File out_stdout = stdout()
  }
}