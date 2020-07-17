version 1.0

task JolyTree.sh {
  input {
    Directory? directory_name_containing
    String? basename_written_output
    Int? sketch_size_default
    String? probability_observing_default
    Int? kmer_size_default
    String? at_least_one
    Boolean? bme_tree_inference
    Int? number_when_performing
    Int? number_threads_default
    String joly_tree_dots_h
  }
  command <<<
    JolyTree.sh \
      ~{joly_tree_dots_h} \
      ~{if defined(directory_name_containing) then ("-i " +  '"' + directory_name_containing + '"') else ""} \
      ~{if defined(basename_written_output) then ("-b " +  '"' + basename_written_output + '"') else ""} \
      ~{if defined(sketch_size_default) then ("-s " +  '"' + sketch_size_default + '"') else ""} \
      ~{if defined(probability_observing_default) then ("-q " +  '"' + probability_observing_default + '"') else ""} \
      ~{if defined(kmer_size_default) then ("-k " +  '"' + kmer_size_default + '"') else ""} \
      ~{if defined(at_least_one) then ("-c " +  '"' + at_least_one + '"') else ""} \
      ~{true="-n" false="" bme_tree_inference} \
      ~{if defined(number_when_performing) then ("-r " +  '"' + number_when_performing + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""}
  >>>
  parameter_meta {
    directory_name_containing: "directory name containing  FASTA-formatted contig files;  only files ending with .fa, .fna, .fas or .fasta will be considered (mandatory)"
    basename_written_output: "basename of every written output file (mandatory)"
    sketch_size_default: "sketch size (default: 25% of the largest genome size)"
    probability_observing_default: "probability of observing a random k-mer (default: 0.0001)"
    kmer_size_default: "k-mer size (default: estimated from the average genome size with the probability set by option -q)"
    at_least_one: "if at least one of the estimated p-distances is above this specified cutoff, then a F81 correction is performed (default: 0.1)"
    bme_tree_inference: "no BME tree inference (only pairwise distance estimation)"
    number_when_performing: "number of steps  when performing the  ratchet-based  BME tree search (default: 100)"
    number_threads_default: "number of threads (default: 2)"
    joly_tree_dots_h: "[options]"
  }
}