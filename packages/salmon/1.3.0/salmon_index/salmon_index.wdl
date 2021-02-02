version 1.0

task SalmonIndex {
  input {
    Boolean? print_version_string
    Boolean? arg_transcript_fasta
    Boolean? arg_size_kmers
    Boolean? arg_salmon_index
    Boolean? gen_code
    Boolean? features
    Boolean? keep_duplicates
    Boolean? arg_number_use
    Boolean? keep_fixed_fast_a
    Boolean? arg_size_bloom
    Directory? tmpdir
    Boolean? sparse
    Boolean? arg_treat_sequences
    String? type
  }
  command <<<
    salmon index \
      ~{if (print_version_string) then "-v" else ""} \
      ~{if (arg_transcript_fasta) then "-t" else ""} \
      ~{if (arg_size_kmers) then "-k" else ""} \
      ~{if (arg_salmon_index) then "-i" else ""} \
      ~{if (gen_code) then "--gencode" else ""} \
      ~{if (features) then "--features" else ""} \
      ~{if (keep_duplicates) then "--keepDuplicates" else ""} \
      ~{if (arg_number_use) then "-p" else ""} \
      ~{if (keep_fixed_fast_a) then "--keepFixedFasta" else ""} \
      ~{if (arg_size_bloom) then "-f" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if (sparse) then "--sparse" else ""} \
      ~{if (arg_treat_sequences) then "-d" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""}
  >>>
  parameter_meta {
    print_version_string: "[ --version ]              print version string"
    arg_transcript_fasta: "[ --transcripts ] arg      Transcript fasta file."
    arg_size_kmers: "[ --kmerLen ] arg (=31)    The size of k-mers that should be used for the\\nquasi index."
    arg_salmon_index: "[ --index ] arg            salmon index."
    gen_code: "This flag will expect the input transcript\\nfasta to be in GENCODE format, and will split\\nthe transcript name at the first '|' character.\\nThese reduced names will be used in the output\\nand when looking for these transcripts in a\\ngene to transcript GTF."
    features: "This flag will expect the input reference to be\\nin the tsv file format, and will split the\\nfeature name at the first 'tab' character.\\nThese reduced names will be used in the output\\nand when looking for the sequence of the\\nfeatures.GTF."
    keep_duplicates: "This flag will disable the default indexing\\nbehavior of discarding sequence-identical\\nduplicate transcripts.  If this flag is passed,\\nthen duplicate transcripts that appear in the\\ninput will be retained and quantified\\nseparately."
    arg_number_use: "[ --threads ] arg (=2)     Number of threads to use during indexing."
    keep_fixed_fast_a: "Retain the fixed fasta file (without short\\ntranscripts and duplicates, clipped, etc.)\\ngenerated during indexing"
    arg_size_bloom: "[ --filterSize ] arg (=-1) The size of the Bloom filter that will be used\\nby TwoPaCo during indexing. The filter will be\\nof size 2^{filterSize}. The default value of -1\\nmeans that the filter size will be\\nautomatically set based on the number of\\ndistinct k-mers in the input, as estimated by\\nnthll."
    tmpdir: "The directory location that will be used for\\nTwoPaCo temporary files; it will be created if\\nneed be and be removed prior to indexing\\ncompletion. The default value will cause a\\n(temporary) subdirectory of the salmon index\\ndirectory to be used for this purpose."
    sparse: "Build the index using a sparse sampling of\\nk-mer positions This will require less memory\\n(especially during quantification), but will\\ntake longer to construct and can slow down\\nmapping / alignment"
    arg_treat_sequences: "[ --decoys ] arg           Treat these sequences ids from the reference as\\nthe decoys that may have sequence homologous to\\nsome known transcript. for example in case of\\nthe genome, provide a list of chromosome name\\n--- one per line"
    type: "(=puff)            The type of index to build; the only option is\\n\\\"puff\\\" in this version of salmon.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}