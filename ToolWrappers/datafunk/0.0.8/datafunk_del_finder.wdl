version 1.0

task DatafunkDelFinder {
  input {
    Int? input_fast_a
    File? deletions_file
    File? genotypes_table
    File? output_fast_a
    Boolean? append_as_snp
  }
  command <<<
    datafunk del_finder \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(deletions_file) then ("--deletions-file " +  '"' + deletions_file + '"') else ""} \
      ~{if defined(genotypes_table) then ("--genotypes-table " +  '"' + genotypes_table + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if (append_as_snp) then "--append-as-SNP" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_fast_a: "Alignment (to Wuhan-Hu-1) in Fasta format to type"
    deletions_file: "Input CSV file with deletions type. Format is: 1-based\\nstart position of deletion,length of deletion (dont\\ninclude a header line), eg: 1605,3"
    genotypes_table: "CSV file with deletion typing results to write.\\nReturns the genotype for each deletion in --deletions-\\nfile for each sequence in --input-fasta: either \\\"ref\\\",\\n\\\"del\\\" or \\\"X\\\" (for missing data)"
    output_fast_a: "Fasta file to write"
    append_as_snp: "If invoked, then append the genotype of the deletion\\nas a SNP on the end of the alignment\\n"
  }
  output {
    File out_stdout = stdout()
  }
}