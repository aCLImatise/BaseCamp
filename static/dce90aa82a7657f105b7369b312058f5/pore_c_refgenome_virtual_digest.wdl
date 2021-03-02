version 1.0

task PoreCRefgenomeVirtualdigest {
  input {
    Boolean? digest_type
    Int? n_workers
    String fast_a
    String cut_on
    String output_prefix
  }
  command <<<
    pore_c refgenome virtual_digest \
      ~{fast_a} \
      ~{cut_on} \
      ~{output_prefix} \
      ~{if (digest_type) then "--digest-type" else ""} \
      ~{if defined(n_workers) then ("--n_workers " +  '"' + n_workers + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    digest_type: "[enzyme|regex|bin]\\nThe type of digest you want to do"
    n_workers: "The number of dask_workers to use  [default:\\n1]"
    fast_a: ""
    cut_on: ""
    output_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}