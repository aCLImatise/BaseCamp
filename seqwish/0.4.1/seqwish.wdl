version 1.0

task Seqwish {
  input {
    Boolean? allows_filtering_inputs
    Boolean? sequences_used_generate
    Boolean? build_graph_using
    Boolean? write_graph_file
    Boolean? use_match_list
    Boolean? write_graph_vgp
    Boolean? use_many_threads
    Boolean? limit_transitive_closure
    Boolean? filter_exact_matches
    Boolean? number_bp_use
    Boolean? keep_temp
    Boolean? debug
  }
  command <<<
    seqwish \
      ~{true="-p" false="" allows_filtering_inputs} \
      ~{true="-s" false="" sequences_used_generate} \
      ~{true="-b" false="" build_graph_using} \
      ~{true="-g" false="" write_graph_file} \
      ~{true="-m" false="" use_match_list} \
      ~{true="-o" false="" write_graph_vgp} \
      ~{true="-t" false="" use_many_threads} \
      ~{true="-r" false="" limit_transitive_closure} \
      ~{true="-k" false="" filter_exact_matches} \
      ~{true="-B" false="" number_bp_use} \
      ~{true="--keep-temp" false="" keep_temp} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    allows_filtering_inputs: "[FILE], --paf-alns=[FILE]       Induce the graph from these PAF formatted alignments. Optionally, a list of filenames and minimum match lengths: [file_1]:[min_match_length_1],... This allows the differential filtering of short matches from some but not all inputs, in effect allowing `-k` to be specified differently for each input."
    sequences_used_generate: "[FILE], --seqs=[FILE]           The sequences used to generate the alignments (FASTA, FASTQ, .seq)"
    build_graph_using: "[BASE], --base=[BASE]           Build graph using this basename"
    write_graph_file: "[FILE], --gfa=[FILE]            Write the graph in GFA to FILE"
    use_match_list: "[FILE], --match-list=[FILE]     Use the sequence match list in FILE to subset the input alignments"
    write_graph_vgp: "[BASE], --vgp-out=[BASE]        Write the graph in VGP format with basename FILE"
    use_many_threads: "[N], --threads=[N]              Use this many threads during parallel steps"
    limit_transitive_closure: "[N], --repeat-max=[N]           Limit transitive closure to include no more than N copies of a given input base"
    filter_exact_matches: "[N], --min-match-len=[N]        Filter exact matches below this length. This can smooth the graph locally and prevent the formation of complex local graph topologies from forming due to differential alignments."
    number_bp_use: "[N], --transclose-batch=[N]     Number of bp to use for transitive closure batch (default 1M)"
    keep_temp: "keep intermediate files generated during graph induction"
    debug: "enable debugging"
  }
}