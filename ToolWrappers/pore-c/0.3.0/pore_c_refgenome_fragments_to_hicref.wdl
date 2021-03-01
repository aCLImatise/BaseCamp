version 1.0

task PoreCRefgenomeFragmentstohicref {
  input {
    String fragments_parquet
    String hi_cref
  }
  command <<<
    pore_c refgenome fragments_to_hicref \
      ~{fragments_parquet} \
      ~{hi_cref}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    fragments_parquet: ""
    hi_cref: ""
  }
  output {
    File out_stdout = stdout()
  }
}