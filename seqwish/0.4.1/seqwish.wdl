version 1.0

task Seqwish {
  input {
    Boolean? induce_graph_pafformatted
    Boolean? sequences_used_generate
    Boolean? build_graph_using
    Boolean? write_graph_file
    Boolean? use_match_list
    File? write_graph_vgp
    Boolean? use_many_threads
    Boolean? filter_exact_matches
    Boolean? number_bp_use
    Boolean? keep_temp
    Boolean? debug
    String steps
  }
  command <<<
    seqwish \
      ~{steps} \
      ~{if (induce_graph_pafformatted) then "-p" else ""} \
      ~{if (sequences_used_generate) then "-s" else ""} \
      ~{if (build_graph_using) then "-b" else ""} \
      ~{if (write_graph_file) then "-g" else ""} \
      ~{if (use_match_list) then "-m" else ""} \
      ~{if (write_graph_vgp) then "-o" else ""} \
      ~{if (use_many_threads) then "-t" else ""} \
      ~{if (filter_exact_matches) then "-k" else ""} \
      ~{if (number_bp_use) then "-B" else ""} \
      ~{if (keep_temp) then "--keep-temp" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    induce_graph_pafformatted: "[FILE], --paf-alns=[FILE]       Induce the graph from these PAF\\nformatted alignments. Optionally, a list\\nof filenames and minimum match lengths:\\n[file_1]:[min_match_length_1],... This\\nallows the differential filtering of\\nshort matches from some but not all\\ninputs, in effect allowing `-k` to be\\nspecified differently for each input."
    sequences_used_generate: "[FILE], --seqs=[FILE]           The sequences used to generate the\\nalignments (FASTA, FASTQ, .seq)"
    build_graph_using: "[BASE], --base=[BASE]           Build graph using this basename"
    write_graph_file: "[FILE], --gfa=[FILE]            Write the graph in GFA to FILE"
    use_match_list: "[FILE], --match-list=[FILE]     Use the sequence match list in FILE to\\nsubset the input alignments"
    write_graph_vgp: "[BASE], --vgp-out=[BASE]        Write the graph in VGP format with\\nbasename FILE"
    use_many_threads: "[N], --threads=[N]              Use this many threads during parallel"
    filter_exact_matches: "[N], --min-match-len=[N]        Filter exact matches below this length.\\nThis can smooth the graph locally and\\nprevent the formation of complex local\\ngraph topologies from forming due to\\ndifferential alignments."
    number_bp_use: "[N], --transclose-batch=[N]     Number of bp to use for transitive\\nclosure batch (default 1M)"
    keep_temp: "keep intermediate files generated during\\ngraph induction"
    debug: "enable debugging"
    steps: "-r[N], --repeat-max=[N]           Limit transitive closure to include no"
  }
  output {
    File out_stdout = stdout()
    File out_write_graph_vgp = "${in_write_graph_vgp}"
  }
}