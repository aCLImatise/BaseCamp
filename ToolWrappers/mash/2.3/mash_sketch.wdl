version 1.0

task MashSketch {
  input {
    Int? parallelism_many_threads
    Boolean? list_input_lines
    File? output_prefix_file
    File? id_field_id
    File? comment_sketch_reads
    Int? kmer_size_hashes
    Int? sketch_size_sketch
    Boolean? sketch_individual_sequences
    Int? seed_provide_hash
    Int? probability_threshold_size
    Boolean? input_read_set
    Int? use_bloom_filter
    Int? minimum_copies_kmer
    Int? target_coverage_sketching
    Int? genome_size_raw
    Boolean? preserve_strand_default
    Boolean? use_acid_az
    String? alphabet_base_hashes
    Boolean? preserve_case_ignored
    String option
  }
  command <<<
    mash sketch \
      ~{option} \
      ~{if defined(parallelism_many_threads) then ("-p " +  '"' + parallelism_many_threads + '"') else ""} \
      ~{if (list_input_lines) then "-l" else ""} \
      ~{if defined(output_prefix_file) then ("-o " +  '"' + output_prefix_file + '"') else ""} \
      ~{if defined(id_field_id) then ("-I " +  '"' + id_field_id + '"') else ""} \
      ~{if defined(comment_sketch_reads) then ("-C " +  '"' + comment_sketch_reads + '"') else ""} \
      ~{if defined(kmer_size_hashes) then ("-k " +  '"' + kmer_size_hashes + '"') else ""} \
      ~{if defined(sketch_size_sketch) then ("-s " +  '"' + sketch_size_sketch + '"') else ""} \
      ~{if (sketch_individual_sequences) then "-i" else ""} \
      ~{if defined(seed_provide_hash) then ("-S " +  '"' + seed_provide_hash + '"') else ""} \
      ~{if defined(probability_threshold_size) then ("-w " +  '"' + probability_threshold_size + '"') else ""} \
      ~{if (input_read_set) then "-r" else ""} \
      ~{if defined(use_bloom_filter) then ("-b " +  '"' + use_bloom_filter + '"') else ""} \
      ~{if defined(minimum_copies_kmer) then ("-m " +  '"' + minimum_copies_kmer + '"') else ""} \
      ~{if defined(target_coverage_sketching) then ("-c " +  '"' + target_coverage_sketching + '"') else ""} \
      ~{if defined(genome_size_raw) then ("-g " +  '"' + genome_size_raw + '"') else ""} \
      ~{if (preserve_strand_default) then "-n" else ""} \
      ~{if (use_acid_az) then "-a" else ""} \
      ~{if defined(alphabet_base_hashes) then ("-z " +  '"' + alphabet_base_hashes + '"') else ""} \
      ~{if (preserve_case_ignored) then "-Z" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mash:2.3--ha61e061_0"
  }
  parameter_meta {
    parallelism_many_threads: "Parallelism. This many threads will be spawned for processing. [1]"
    list_input_lines: "List input. Lines in each <input> specify paths to sequence files,\\none per line."
    output_prefix_file: "Output prefix (first input file used if unspecified). The suffix\\n'.msh' will be appended."
    id_field_id: "ID field for sketch of reads (instead of first sequence ID)."
    comment_sketch_reads: "Comment for a sketch of reads (instead of first sequence comment)."
    kmer_size_hashes: "K-mer size. Hashes will be based on strings of this many\\nnucleotides. Canonical nucleotides are used by default (see\\nAlphabet options below). (1-32) [21]"
    sketch_size_sketch: "Sketch size. Each sketch will have at most this many non-redundant\\nmin-hashes. [1000]"
    sketch_individual_sequences: "Sketch individual sequences, rather than whole files, e.g. for\\nmulti-fastas of single-chromosome genomes or pair-wise gene\\ncomparisons."
    seed_provide_hash: "Seed to provide to the hash function. (0-4294967296) [42]"
    probability_threshold_size: "Probability threshold for warning about low k-mer size. (0-1)\\n[0.01]"
    input_read_set: "Input is a read set. See Reads options below. Incompatible with -i."
    use_bloom_filter: "Use a Bloom filter of this size (raw bytes or with K/M/G/T) to\\nfilter out unique k-mers. This is useful if exact filtering with -m\\nuses too much memory. However, some unique k-mers may pass\\nerroneously, and copies cannot be counted beyond 2. Implies -r."
    minimum_copies_kmer: "Minimum copies of each k-mer required to pass noise filter for\\nreads. Implies -r. [1]"
    target_coverage_sketching: "Target coverage. Sketching will conclude if this coverage is\\nreached before the end of the input file (estimated by average\\nk-mer multiplicity). Implies -r."
    genome_size_raw: "Genome size (raw bases or with K/M/G/T). If specified, will be used\\nfor p-value calculation instead of an estimated size from k-mer\\ncontent. Implies -r."
    preserve_strand_default: "Preserve strand (by default, strand is ignored by using canonical\\nDNA k-mers, which are alphabetical minima of forward-reverse\\npairs). Implied if an alphabet is specified with -a or -z."
    use_acid_az: "Use amino acid alphabet (A-Z, except BJOUXZ). Implies -n, -k 9."
    alphabet_base_hashes: "Alphabet to base hashes on (case ignored by default; see -Z).\\nK-mers with other characters will be ignored. Implies -n."
    preserve_case_ignored: "Preserve case in k-mers and alphabet (case is ignored by default).\\nSequence letters whose case is not in the current alphabet will be\\nskipped when sketching.\\n"
    option: "Description (range) [default]"
  }
  output {
    File out_stdout = stdout()
  }
}