version 1.0

task PartitionGtf2gbpl {
  input {
    Int? min_cluster_size
    Int? max_flanking_region_size
    Boolean? verbose
    Int entry_two
    String locus
    String features
    String origin
  }
  command <<<
    partition_gtf2gb_pl \
      ~{entry_two} \
      ~{locus} \
      ~{features} \
      ~{origin} \
      ~{if defined(min_cluster_size) then ("--minClusterSize " +  '"' + min_cluster_size + '"') else ""} \
      ~{if defined(max_flanking_region_size) then ("--maxFlankingRegionSize " +  '"' + max_flanking_region_size + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    min_cluster_size: "minimal number of genes in a one cluster,\\ndefault n=20"
    max_flanking_region_size: "maximal size of flanking intergenic region to be\\nexcised around clusters of genes,\\ndefault n=2000"
    verbose: "print verbose warning messages"
    entry_two: "NCBI   CDS 7   28  0 + . gene_id \\\"g3\\\"; transcript_id \\\"g3.t1\\\""
    locus: "NC_010473.1_5128-6494   1367 bp  DNA"
    features: "Location/Qualifiers"
    origin: "1 aatgcggtaa cttagagatt aggattgcgg agaataacaa ccgccgttct catcgagtaa\\n61 tctccggata tcgacccata acgggcaatg ataaaaggag taacctgtga aaaagatgca\\n...\\n1261 cagcgtatag cgcgtggtgg tcaacgggct ttggtaatca agcgttttcg caggtgaaat\\n1321 aagaatcagc atatccagtc cttgcaggaa atttatgccg"
  }
  output {
    File out_stdout = stdout()
  }
}