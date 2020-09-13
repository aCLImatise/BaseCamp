version 1.0

task RgiKmerBuild {
  input {
    Directory? input_directory
    File? card
    Int? kmer_size_eg
    Boolean? skip
    Int? batch_size
    String? n
    String sequences_dot
  }
  command <<<
    rgi kmer_build \
      ~{sequences_dot} \
      ~{if defined(input_directory) then ("--input_directory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(card) then ("--card " +  '"' + card + '"') else ""} \
      ~{if defined(kmer_size_eg) then ("-k " +  '"' + kmer_size_eg + '"') else ""} \
      ~{if (skip) then "--skip" else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    input_directory: "input directory of prevalence data"
    card: "fasta file of CARD reference sequences. If missing,\\nrun 'rgi card_annotation' to generate."
    kmer_size_eg: "k-mer size (e.g., 61)"
    skip: "skips the concatenation and splitting of the CARD*R*V"
    batch_size: "number of kmers to query at a time using pyahocorasick\\n--the greater the number the more memory usage\\n(default=100,000)\\n"
    n: ""
    sequences_dot: "-n THREADS, --threads THREADS"
  }
  output {
    File out_stdout = stdout()
  }
}