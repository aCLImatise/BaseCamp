version 1.0

task GenerateKmerDistribution.py {
  input {
    String? kraken_counts_file
    String? output_file_containing
  }
  command <<<
    generate_kmer_distribution.py \
      ~{if defined(kraken_counts_file) then ("--input " +  '"' + kraken_counts_file + '"') else ""} \
      ~{if defined(output_file_containing) then ("--output " +  '"' + output_file_containing + '"') else ""}
  >>>
  parameter_meta {
    kraken_counts_file: "Kraken counts file for each genome mapped to the overall database."
    output_file_containing: "Output file containing each classified taxonomy ID and the kmer distributions of all genomes with this classification."
  }
}