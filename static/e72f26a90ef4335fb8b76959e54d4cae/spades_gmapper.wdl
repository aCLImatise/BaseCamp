version 1.0

task SpadesGmapper {
  input {
    String? kmer_length_use
    String? _threads_use
    String? tmp_dir
  }
  command <<<
    spades-gmapper \
      ~{if defined(kmer_length_use) then ("-k " +  '"' + kmer_length_use + '"') else ""} \
      ~{if defined(_threads_use) then ("-t " +  '"' + _threads_use + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""}
  >>>
  parameter_meta {
    kmer_length_use: "k-mer length to use"
    _threads_use: "# of threads to use"
    tmp_dir: "scratch directory to use"
  }
}