version 1.0

task GenerateKmerDistributionpy {
  input {
    File? kraken_counts_file
    File? output_file_containing
  }
  command <<<
    generate_kmer_distribution_py \
      ~{if defined(kraken_counts_file) then ("--input " +  '"' + kraken_counts_file + '"') else ""} \
      ~{if defined(output_file_containing) then ("--output " +  '"' + output_file_containing + '"') else ""}
  >>>
  parameter_meta {
    kraken_counts_file: "Kraken counts file for each genome mapped to the\\noverall database."
    output_file_containing: "Output file containing each classified taxonomy ID and\\nthe kmer distributions of all genomes with this\\nclassification.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_containing = "${in_output_file_containing}"
  }
}