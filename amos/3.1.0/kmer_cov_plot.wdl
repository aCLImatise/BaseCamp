version 1.0

task KmerCovPlot {
  input {
    Boolean? tabular
    Boolean? display_km_ers
    Boolean? forward_only
    Boolean? sum_only
    Boolean? no_tags
    Boolean? no_indices
    String km_er_file
  }
  command <<<
    kmer-cov-plot \
      ~{km_er_file} \
      ~{true="--tabular" false="" tabular} \
      ~{true="--display-kmers" false="" display_km_ers} \
      ~{true="--forward-only" false="" forward_only} \
      ~{true="--sum-only" false="" sum_only} \
      ~{true="--no-tags" false="" no_tags} \
      ~{true="--no-indices" false="" no_indices}
  >>>
  parameter_meta {
    tabular: "Output the information as one read per line, as the FASTA/FASTQ tag followed by the k-mer coverage values, tab-delimited.  The coverage of invalid k-mers is marked as -1.  Without -f, the sum of the coverage of the forward and reverse complement k-mers is printed.  Cannot be used with --display-kmers."
    display_km_ers: "Display the actual k-mer in addition to the counts. Cannot be used with --tabular."
    forward_only: "Display count (and k-mer with -k) for the forward k-mer only."
    sum_only: "Display only the combined count of the forward and reverse complement k-mers.  Default with --tabular."
    no_tags: "Do not print sequence tags."
    no_indices: "Do not print the index of each k-mer.  Ignored if --tabular is given."
    km_er_file: ""
  }
}