version 1.0

task RgiKmerBuild {
  input {
    String? input_directory
    String? card
    String? kmer_size_eg
    Boolean? skip
    String? threads
    String? batch_size
    String rgi
  }
  command <<<
    rgi kmer_build \
      ~{rgi} \
      ~{if defined(input_directory) then ("--input_directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(card) then ("--card " +  '"' + card + '"') else ""} \
      ~{if defined(kmer_size_eg) then ("-k " +  '"' + kmer_size_eg + '"') else ""} \
      ~{true="--skip" false="" skip} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""}
  >>>
  parameter_meta {
    input_directory: "input directory of prevalence data"
    card: "fasta file of CARD reference sequences. If missing, run 'rgi card_annotation' to generate."
    kmer_size_eg: "k-mer size (e.g., 61)"
    skip: "skips the concatenation and splitting of the CARD*R*V sequences."
    threads: "number of threads (CPUs) to use (default=1)"
    batch_size: "number of kmers to query at a time using pyahocorasick --the greater the number the more memory usage (default=100,000)"
    rgi: ""
  }
}