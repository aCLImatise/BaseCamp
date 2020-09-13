version 1.0

task Bwise {
  input {
    Int? input_fasta_pairedend
    Int? input_fasta_singleend
    Int? integer_kmers_present
    Int? integer_minimal_unitig
    Int? integer_superreads_present
    Int? integer_unitigs_less
    Int? integer_smallest_kmer
    Int? integer_largest_kmer
    Int? anchors_test_mapping
    Int? anchors_size_default
    Int? fraction_indexed_allput
    Int? maximal_ccurence_indexed
    Int? missmatch_allowed_mapping
    Int? greedy_contig_extension
    Int? number_cores_used
    File? path_store_results
    String? produce_haploid_assembly
  }
  command <<<
    bwise \
      ~{if defined(input_fasta_pairedend) then ("-x " +  '"' + input_fasta_pairedend + '"') else ""} \
      ~{if defined(input_fasta_singleend) then ("-u " +  '"' + input_fasta_singleend + '"') else ""} \
      ~{if defined(integer_kmers_present) then ("-s " +  '"' + integer_kmers_present + '"') else ""} \
      ~{if defined(integer_minimal_unitig) then ("-S " +  '"' + integer_minimal_unitig + '"') else ""} \
      ~{if defined(integer_superreads_present) then ("-p " +  '"' + integer_superreads_present + '"') else ""} \
      ~{if defined(integer_unitigs_less) then ("-P " +  '"' + integer_unitigs_less + '"') else ""} \
      ~{if defined(integer_smallest_kmer) then ("-k " +  '"' + integer_smallest_kmer + '"') else ""} \
      ~{if defined(integer_largest_kmer) then ("-K " +  '"' + integer_largest_kmer + '"') else ""} \
      ~{if defined(anchors_test_mapping) then ("-e " +  '"' + anchors_test_mapping + '"') else ""} \
      ~{if defined(anchors_size_default) then ("-a " +  '"' + anchors_size_default + '"') else ""} \
      ~{if defined(fraction_indexed_allput) then ("-i " +  '"' + fraction_indexed_allput + '"') else ""} \
      ~{if defined(maximal_ccurence_indexed) then ("-A " +  '"' + maximal_ccurence_indexed + '"') else ""} \
      ~{if defined(missmatch_allowed_mapping) then ("-m " +  '"' + missmatch_allowed_mapping + '"') else ""} \
      ~{if defined(greedy_contig_extension) then ("-g " +  '"' + greedy_contig_extension + '"') else ""} \
      ~{if defined(number_cores_used) then ("-t " +  '"' + number_cores_used + '"') else ""} \
      ~{if defined(path_store_results) then ("-o " +  '"' + path_store_results + '"') else ""} \
      ~{if defined(produce_haploid_assembly) then ("-H " +  '"' + produce_haploid_assembly + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_pairedend: "input fasta or (compressed .gz if -c option is != 0)\\npaired-end read files. Several read files must be\\nconcatenated."
    input_fasta_singleend: "input fasta or (compressed .gz if -c option is != 0)\\nsingle-end read files. Several read files must be\\nconcatenated."
    integer_kmers_present: "an integer, k-mers present strictly less than this\\nnumber of times in the dataset will be discarded\\n(default 2)"
    integer_minimal_unitig: "an integer, minimal unitig coverage for first cleaning\\n(default 5)"
    integer_superreads_present: "an integer, super-reads present strictly less than\\nthis number of times will be discarded (default 3)"
    integer_unitigs_less: "an integer, unitigs with less than S reads mapped is\\nfiltred (default 3)"
    integer_smallest_kmer: "an integer, smallest k-mer size (default 63)"
    integer_largest_kmer: "an integer, largest k-mer size (default 201)"
    anchors_test_mapping: "Anchors to test for mapping (default 1000)"
    anchors_size_default: "Anchors size (default 31)"
    fraction_indexed_allput: "Fraction of the anchor that are indexed (default all,\\nput 10 to index one out of 10 anchors)"
    maximal_ccurence_indexed: "maximal ccurence for an indexed anchor (default 1)"
    missmatch_allowed_mapping: "missmatch allowed in mapping (default 10)"
    greedy_contig_extension: "Greedy contig extension"
    number_cores_used: "number of cores used (default max)"
    path_store_results: "path to store the results (default = current\\ndirectory)"
    produce_haploid_assembly: "Produce a haploid assembly"
  }
  output {
    File out_stdout = stdout()
  }
}