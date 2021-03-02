version 1.0

task DatafunkExcludeUkSeqs {
  input {
    File? input_fast_a
    File? output_fast_a
  }
  command <<<
    datafunk exclude_uk_seqs \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_fast_a: "Fasta file to read"
    output_fast_a: "Fasta file to write\\n"
  }
  output {
    File out_stdout = stdout()
  }
}