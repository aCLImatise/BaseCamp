version 1.0

task GeneCheckerpy {
  input {
    String genbank_reference
    String fast_a_file
    String output_file
    String organism_type
  }
  command <<<
    geneChecker_py \
      ~{genbank_reference} \
      ~{fast_a_file} \
      ~{output_file} \
      ~{organism_type}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mitofinder:1.4--py27h516909a_0"
  }
  parameter_meta {
    genbank_reference: ""
    fast_a_file: ""
    output_file: ""
    organism_type: ""
  }
  output {
    File out_stdout = stdout()
  }
}