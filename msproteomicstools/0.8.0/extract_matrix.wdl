version 1.0

task ExtractMatrix.py {
  input {
    String? in
    String? out
    Array[String] columns
  }
  command <<<
    extract_matrix.py \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""}
  >>>
  parameter_meta {
    in: "feature aligner file"
    out: "output matrix"
    columns: "Which columns are written"
  }
}