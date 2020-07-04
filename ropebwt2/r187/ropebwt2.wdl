version 1.0

task Ropebwt2 {
  input {
    Int? leaf_block_length
    Int? max_number_children
    Boolean? build_bwt_reverse
    Boolean? build_bwt_rclo
    Int? batch_size_multistring
    Boolean? always_use_thread
    Int? switch_when_remain
    File? read_existing_index
    Boolean? input_onesequenceperline_format
    Boolean? skip_forward_strand
    Boolean? skip_reverse_strand
    Boolean? skip_sequences_containing
    Int? cut_ambiguous_int
    Boolean? cut_one_base
    Int? hard_mask_bases
    File? write_output_file
    Boolean? dump_index_binary
    Boolean? dump_index_fmd
    Boolean? output_index_newick
    String rope_bwt_two_r_one_eight_seven
    String in_dot_fq_do_tgz
  }
  command <<<
    ropebwt2 \
      ~{rope_bwt_two_r_one_eight_seven} \
      ~{in_dot_fq_do_tgz} \
      ~{if defined(leaf_block_length) then ("-l " +  '"' + leaf_block_length + '"') else ""} \
      ~{if defined(max_number_children) then ("-n " +  '"' + max_number_children + '"') else ""} \
      ~{true="-s" false="" build_bwt_reverse} \
      ~{true="-r" false="" build_bwt_rclo} \
      ~{if defined(batch_size_multistring) then ("-m " +  '"' + batch_size_multistring + '"') else ""} \
      ~{true="-P" false="" always_use_thread} \
      ~{if defined(switch_when_remain) then ("-M " +  '"' + switch_when_remain + '"') else ""} \
      ~{if defined(read_existing_index) then ("-i " +  '"' + read_existing_index + '"') else ""} \
      ~{true="-L" false="" input_onesequenceperline_format} \
      ~{true="-F" false="" skip_forward_strand} \
      ~{true="-R" false="" skip_reverse_strand} \
      ~{true="-N" false="" skip_sequences_containing} \
      ~{if defined(cut_ambiguous_int) then ("-x " +  '"' + cut_ambiguous_int + '"') else ""} \
      ~{true="-C" false="" cut_one_base} \
      ~{if defined(hard_mask_bases) then ("-q " +  '"' + hard_mask_bases + '"') else ""} \
      ~{if defined(write_output_file) then ("-o " +  '"' + write_output_file + '"') else ""} \
      ~{true="-b" false="" dump_index_binary} \
      ~{true="-d" false="" dump_index_fmd} \
      ~{true="-T" false="" output_index_newick}
  >>>
  parameter_meta {
    leaf_block_length: "leaf block length [0]"
    max_number_children: "max number children per internal node [64]"
    build_bwt_reverse: "build BWT in the reverse lexicographical order (RLO)"
    build_bwt_rclo: "build BWT in RCLO, overriding -s "
    batch_size_multistring: "batch size for multi-string indexing; 0 for single-string [10g]"
    always_use_thread: "always use a single thread"
    switch_when_remain: "switch to single thread when < INT strings remain in a batch [1000]"
    read_existing_index: "read existing index in the FMR format from FILE, overriding -s/-r [null]"
    input_onesequenceperline_format: "input in the one-sequence-per-line format"
    skip_forward_strand: "skip forward strand"
    skip_reverse_strand: "skip reverse strand"
    skip_sequences_containing: "skip sequences containing ambiguous bases"
    cut_ambiguous_int: "cut at ambiguous bases and discard segment with length <INT [0]"
    cut_one_base: "cut one base if forward==reverse"
    hard_mask_bases: "hard mask bases with QUAL<INT [0]"
    write_output_file: "write output to FILE [stdout]"
    dump_index_binary: "dump the index in the binary FMR format"
    dump_index_fmd: "dump the index in fermi's FMD format"
    output_index_newick: "output the index in the Newick format (for debugging)"
    rope_bwt_two_r_one_eight_seven: ""
    in_dot_fq_do_tgz: ""
  }
}