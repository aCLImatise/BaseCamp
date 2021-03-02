version 1.0

task PoreCRefgenomePrepare {
  input {
    String? genome_id
    String reference_fast_a
    String output_prefix
  }
  command <<<
    pore_c refgenome prepare \
      ~{reference_fast_a} \
      ~{output_prefix} \
      ~{if defined(genome_id) then ("--genome-id " +  '"' + genome_id + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    genome_id: "An ID for this genome assembly"
    reference_fast_a: ""
    output_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}