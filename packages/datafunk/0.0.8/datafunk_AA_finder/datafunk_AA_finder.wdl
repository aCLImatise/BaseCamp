version 1.0

task DatafunkAAFinder {
  input {
    Int? input_fast_a
    File? codons_file
    File? genotypes_table
  }
  command <<<
    datafunk AA_finder \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(codons_file) then ("--codons-file " +  '"' + codons_file + '"') else ""} \
      ~{if defined(genotypes_table) then ("--genotypes-table " +  '"' + genotypes_table + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_fast_a: "Alignment (to Wuhan-Hu-1) in Fasta format to type"
    codons_file: "Input CSV file with codon locations to parse. Format\\nis: name,1-based start position of codon (dont include\\na header line), eg: d614g,23402"
    genotypes_table: "CSV file with amino acid typing results to write.\\nReturns the amino acid at each position in --codons-\\nfile for each sequence in --input-fasta, or \\\"X\\\" for\\nmissing data\\n"
  }
  output {
    File out_stdout = stdout()
  }
}