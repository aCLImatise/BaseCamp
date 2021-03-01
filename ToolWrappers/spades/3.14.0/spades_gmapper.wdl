version 1.0

task Spadesgmapper {
  input {
    Int? kmer_length_use
    String? _threads_use
    Directory? tmp_dir
  }
  command <<<
    spades_gmapper \
      ~{if defined(kmer_length_use) then ("-k " +  '"' + kmer_length_use + '"') else ""} \
      ~{if defined(_threads_use) then ("-t " +  '"' + _threads_use + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kmer_length_use: "k-mer length to use"
    _threads_use: "# of threads to use"
    tmp_dir: "scratch directory to use\\n"
  }
  output {
    File out_stdout = stdout()
  }
}