version 1.0

task Mapseq {
  input {
    Boolean? n_threads
    Boolean? top_hits
    Boolean? to_potus
    Boolean? min_score
    Boolean? mini_done
    Boolean? mini_d_two
    Boolean? otu_lim
    Boolean? print_hits
    Boolean? print_align
    File? otu_counts
    File? otu_table
    String input_dot_fa
  }
  command <<<
    mapseq \
      ~{input_dot_fa} \
      ~{if (n_threads) then "-nthreads" else ""} \
      ~{if (top_hits) then "-tophits" else ""} \
      ~{if (to_potus) then "-topotus" else ""} \
      ~{if (min_score) then "-minscore" else ""} \
      ~{if (mini_done) then "-minid1" else ""} \
      ~{if (mini_d_two) then "-minid2" else ""} \
      ~{if (otu_lim) then "-otulim" else ""} \
      ~{if (print_hits) then "-print_hits" else ""} \
      ~{if (print_align) then "-print_align" else ""} \
      ~{if (otu_counts) then "-otucounts" else ""} \
      ~{if (otu_table) then "-otutable" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mapseq:1.2.6--h8dc0705_0"
  }
  parameter_meta {
    n_threads: "<int>  number of threads to use [default: 4]"
    top_hits: "<int>  number of reference sequences to include in alignment phase [default: 20]"
    to_potus: "<int>  number of internal reference otus to include in alignment phase [default: 10]"
    min_score: "<int>  minimum score cutoff to consider for a classification, should be reduced when searching very small sequences, i.e.: primer search [default: 30]"
    mini_done: "<int>  minimum number of shared kmers to consider hit in second phase kmer search [default: 1]"
    mini_d_two: "<int>  minimum number of shared kmers to consider hit in alignment phase [default: 1]"
    otu_lim: "<int>  number of sequences per internal cluster to include in alignment phase [default: 50]"
    print_hits: "outputs list of top hits for each input sequence"
    print_align: "outputs alignments"
    otu_counts: "<sample1.mseq>\\ncomputes summary of classification counts from the classification output file"
    otu_table: "<sample1.mseq> [sample2.mseq [...]]\\ngenerates a tsv file with taxonomic labels as rows and samples as columns from classification output files"
    input_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
    File out_otu_counts = "${in_otu_counts}"
    File out_otu_table = "${in_otu_table}"
  }
}