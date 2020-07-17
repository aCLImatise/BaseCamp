version 1.0

task Bwise {
  input {
    String? input_fasta_pairedend
    String? input_fasta_singleend
    String? integer_kmers_present
    String? integer_minimal_unitig
    String? integer_superreads_present
    String? integer_unitigs_mapped
    String? integer_smallest_kmer
    String? integer_largest_kmer
    String? anchors_test_mapping
    String? anchors_size_default
    String? fraction_anchor_indexed
    Int? maximal_ccurence_indexed
    String? missmatch_allowed_mapping
    String? greedy_contig_extension
    String? number_cores_used
    String? path_store_default
    String? produce_haploid_assembly
  }
  command <<<
    bwise \
      ~{if defined(input_fasta_pairedend) then ("-x " +  '"' + input_fasta_pairedend + '"') else ""} \
      ~{if defined(input_fasta_singleend) then ("-u " +  '"' + input_fasta_singleend + '"') else ""} \
      ~{if defined(integer_kmers_present) then ("-s " +  '"' + integer_kmers_present + '"') else ""} \
      ~{if defined(integer_minimal_unitig) then ("-S " +  '"' + integer_minimal_unitig + '"') else ""} \
      ~{if defined(integer_superreads_present) then ("-p " +  '"' + integer_superreads_present + '"') else ""} \
      ~{if defined(integer_unitigs_mapped) then ("-P " +  '"' + integer_unitigs_mapped + '"') else ""} \
      ~{if defined(integer_smallest_kmer) then ("-k " +  '"' + integer_smallest_kmer + '"') else ""} \
      ~{if defined(integer_largest_kmer) then ("-K " +  '"' + integer_largest_kmer + '"') else ""} \
      ~{if defined(anchors_test_mapping) then ("-e " +  '"' + anchors_test_mapping + '"') else ""} \
      ~{if defined(anchors_size_default) then ("-a " +  '"' + anchors_size_default + '"') else ""} \
      ~{if defined(fraction_anchor_indexed) then ("-i " +  '"' + fraction_anchor_indexed + '"') else ""} \
      ~{if defined(maximal_ccurence_indexed) then ("-A " +  '"' + maximal_ccurence_indexed + '"') else ""} \
      ~{if defined(missmatch_allowed_mapping) then ("-m " +  '"' + missmatch_allowed_mapping + '"') else ""} \
      ~{if defined(greedy_contig_extension) then ("-g " +  '"' + greedy_contig_extension + '"') else ""} \
      ~{if defined(number_cores_used) then ("-t " +  '"' + number_cores_used + '"') else ""} \
      ~{if defined(path_store_default) then ("-o " +  '"' + path_store_default + '"') else ""} \
      ~{if defined(produce_haploid_assembly) then ("-H " +  '"' + produce_haploid_assembly + '"') else ""}
  >>>
  parameter_meta {
    input_fasta_pairedend: "input fasta or (compressed .gz if -c option is != 0) paired-end read files. Several read files must be concatenated."
    input_fasta_singleend: "input fasta or (compressed .gz if -c option is != 0) single-end read files. Several read files must be concatenated."
    integer_kmers_present: "an integer, k-mers present strictly less than this number of times in the dataset will be discarded (default 2)"
    integer_minimal_unitig: "an integer, minimal unitig coverage for first cleaning (default 5)"
    integer_superreads_present: "an integer, super-reads present strictly less than this number of times will be discarded (default 3)"
    integer_unitigs_mapped: "an integer, unitigs with less than S reads mapped is filtred (default 3)"
    integer_smallest_kmer: "an integer, smallest k-mer size (default 63)"
    integer_largest_kmer: "an integer, largest k-mer size (default 201)"
    anchors_test_mapping: "Anchors to test for mapping (default 1000)"
    anchors_size_default: "Anchors size (default 31)"
    fraction_anchor_indexed: "Fraction of the anchor that are indexed (default all, put 10 to index one out of 10 anchors)"
    maximal_ccurence_indexed: "maximal ccurence for an indexed anchor (default 1)"
    missmatch_allowed_mapping: "missmatch allowed in mapping (default 10)"
    greedy_contig_extension: "Greedy contig extension"
    number_cores_used: "number of cores used (default max)"
    path_store_default: "path to store the results (default = current directory)"
    produce_haploid_assembly: "Produce a haploid assembly"
  }
}