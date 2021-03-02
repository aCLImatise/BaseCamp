version 1.0

task DatafunkDistanceToRoot {
  input {
    File? input_fast_a
    String? input_metadata
  }
  command <<<
    datafunk distance_to_root \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(input_metadata) then ("--input-metadata " +  '"' + input_metadata + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_fast_a: "Fasta file to read. Must be aligned to Wuhan-Hu-1"
    input_metadata: "Metadata to read. Must contain epi week information\\n"
  }
  output {
    File out_stdout = stdout()
  }
}