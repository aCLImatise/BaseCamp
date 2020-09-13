version 1.0

task JolyTreesh {
  input {
    Directory? directory_name_containing
    File? basename_written_output
    Int? sketch_size_default
    Float? probability_observing_default
    Int? kmer_size_default
    Float? at_least_one
    Boolean? bme_tree_inference
    Int? number_steps_performing
    Int? number_threads_default
    String joly_tree_dots_h
  }
  command <<<
    JolyTree_sh \
      ~{joly_tree_dots_h} \
      ~{if defined(directory_name_containing) then ("-i " +  '"' + directory_name_containing + '"') else ""} \
      ~{if defined(basename_written_output) then ("-b " +  '"' + basename_written_output + '"') else ""} \
      ~{if defined(sketch_size_default) then ("-s " +  '"' + sketch_size_default + '"') else ""} \
      ~{if defined(probability_observing_default) then ("-q " +  '"' + probability_observing_default + '"') else ""} \
      ~{if defined(kmer_size_default) then ("-k " +  '"' + kmer_size_default + '"') else ""} \
      ~{if defined(at_least_one) then ("-c " +  '"' + at_least_one + '"') else ""} \
      ~{if (bme_tree_inference) then "-n" else ""} \
      ~{if defined(number_steps_performing) then ("-r " +  '"' + number_steps_performing + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""}
  >>>
  parameter_meta {
    directory_name_containing: "directory name containing  FASTA-formatted contig files;  only files\\nending with .fa, .fna, .fas or .fasta will be considered (mandatory)"
    basename_written_output: "basename of every written output file (mandatory)"
    sketch_size_default: "sketch size (default: 25% of the largest genome size)"
    probability_observing_default: "probability of observing a random k-mer (default: 0.0001)"
    kmer_size_default: "k-mer size (default: estimated from the average genome size with the\\nprobability set by option -q)"
    at_least_one: "if at least one of the estimated p-distances is above this specified\\ncutoff, then a F81 correction is performed (default: 0.1)"
    bme_tree_inference: "no BME tree inference (only pairwise distance estimation)"
    number_steps_performing: "number of steps  when performing the  ratchet-based  BME tree search\\n(default: 100)"
    number_threads_default: "number of threads (default: 2)"
    joly_tree_dots_h: "[options]"
  }
  output {
    File out_stdout = stdout()
    File out_basename_written_output = "${in_basename_written_output}"
  }
}