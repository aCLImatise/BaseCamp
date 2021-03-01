version 1.0

task Pathracer {
  input {
    Boolean? global
    Boolean? local
    Int? length
    Int? in_del_rate
    Int? top
    Int? threads
    Int? memory
    Int? max_size
    Boolean? hmm
    Boolean? nt
    Boolean? aa
    File? queries
    String? edges
    Boolean? seed_edges
    Boolean? seed_scaffolds
    Boolean? seed_edges_scaffolds
    Boolean? seed_exhaustive
    Boolean? seed_edges_one_by_one
    Boolean? seed_scaffolds_one_by_one
    String? debug
    Boolean? draw
    Boolean? re_score
    Boolean? annotate_graph
    Boolean? acc
    String? no_ali
    String? report_sequences_evalue_threshold
    String? report_sequences_score_threshold
    String? dome
    String? do_mt
    String? ince
    String? in_ct
    String? inc_dome
    String? inc_do_mt
    Boolean? cut_ga
    Boolean? cut_nc
    Boolean? cut_tc
    Boolean? max
    Int? fone
    Int? f_two
    Int? f_three
    Boolean? parallel_components
    Int? max_insertion_length
    Int? expand_coef
    Int? expand_const
    Boolean? no_top_score_filter
    Boolean? no_fast_forward
    File? known_sequences
    Boolean? export_event_graph
  }
  command <<<
    pathracer \
      ~{if (global) then "--global" else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(in_del_rate) then ("--indel-rate " +  '"' + in_del_rate + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(max_size) then ("--max-size " +  '"' + max_size + '"') else ""} \
      ~{if (hmm) then "--hmm" else ""} \
      ~{if (nt) then "--nt" else ""} \
      ~{if (aa) then "--aa" else ""} \
      ~{if defined(queries) then ("--queries " +  '"' + queries + '"') else ""} \
      ~{if defined(edges) then ("--edges " +  '"' + edges + '"') else ""} \
      ~{if (seed_edges) then "--seed-edges" else ""} \
      ~{if (seed_scaffolds) then "--seed-scaffolds" else ""} \
      ~{if (seed_edges_scaffolds) then "--seed-edges-scaffolds" else ""} \
      ~{if (seed_exhaustive) then "--seed-exhaustive" else ""} \
      ~{if (seed_edges_one_by_one) then "--seed-edges-1-by-1" else ""} \
      ~{if (seed_scaffolds_one_by_one) then "--seed-scaffolds-1-by-1" else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if (draw) then "--draw" else ""} \
      ~{if (re_score) then "--rescore" else ""} \
      ~{if (annotate_graph) then "--annotate-graph" else ""} \
      ~{if (acc) then "--acc" else ""} \
      ~{if defined(no_ali) then ("--noali " +  '"' + no_ali + '"') else ""} \
      ~{if defined(report_sequences_evalue_threshold) then ("-E " +  '"' + report_sequences_evalue_threshold + '"') else ""} \
      ~{if defined(report_sequences_score_threshold) then ("-T " +  '"' + report_sequences_score_threshold + '"') else ""} \
      ~{if defined(dome) then ("--domE " +  '"' + dome + '"') else ""} \
      ~{if defined(do_mt) then ("--domT " +  '"' + do_mt + '"') else ""} \
      ~{if defined(ince) then ("-incE " +  '"' + ince + '"') else ""} \
      ~{if defined(in_ct) then ("-incT " +  '"' + in_ct + '"') else ""} \
      ~{if defined(inc_dome) then ("-incdomE " +  '"' + inc_dome + '"') else ""} \
      ~{if defined(inc_do_mt) then ("-incdomT " +  '"' + inc_do_mt + '"') else ""} \
      ~{if (cut_ga) then "--cut_ga" else ""} \
      ~{if (cut_nc) then "--cut_nc" else ""} \
      ~{if (cut_tc) then "--cut_tc" else ""} \
      ~{if (max) then "--max" else ""} \
      ~{if defined(fone) then ("--F1 " +  '"' + fone + '"') else ""} \
      ~{if defined(f_two) then ("--F2 " +  '"' + f_two + '"') else ""} \
      ~{if defined(f_three) then ("--F3 " +  '"' + f_three + '"') else ""} \
      ~{if (parallel_components) then "--parallel-components" else ""} \
      ~{if defined(max_insertion_length) then ("--max-insertion-length " +  '"' + max_insertion_length + '"') else ""} \
      ~{if defined(expand_coef) then ("--expand-coef " +  '"' + expand_coef + '"') else ""} \
      ~{if defined(expand_const) then ("--expand-const " +  '"' + expand_const + '"') else ""} \
      ~{if (no_top_score_filter) then "--no-top-score-filter" else ""} \
      ~{if (no_fast_forward) then "--no-fast-forward" else ""} \
      ~{if defined(known_sequences) then ("--known-sequences " +  '"' + known_sequences + '"') else ""} \
      ~{if (export_event_graph) then "--export-event-graph" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0"
  }
  parameter_meta {
    global: "perform global-local (aka glocal) HMM matching [default]"
    local: "perform local-local HMM matching"
    length: "minimal length of resultant matched sequence; if <=1 then to be multiplied on the length of the pHMM [default: 0.9]"
    in_del_rate: "expected rate of nucleotides indels in graph edges [default: 0]. Used for AA pHMM alignment with frame shifts"
    top: "extract top N paths [default: 10000]"
    threads: "the number of parallel threads [default: 16]"
    memory: "RAM limit for PathRacer in GB (terminates if exceeded) [default: 100]"
    max_size: "maximal component size to consider [default: INF]"
    hmm: "match against HMM(s) [default]"
    nt: "match against nucleotide string(s)"
    aa: "match agains amino acid string(s)"
    queries: "queries names to lookup [default: all queries from input query file]"
    edges: "match around particular edges [default: all graph edges]"
    seed_edges: "use graph edges as seeds"
    seed_scaffolds: "use scaffolds paths as seeds"
    seed_edges_scaffolds: "use edges AND scaffolds paths as seeds [default]"
    seed_exhaustive: "exhaustive mode, use ALL edges"
    seed_edges_one_by_one: "use edges as seeds (1 by 1)"
    seed_scaffolds_one_by_one: "use scaffolds paths as seeds (1 by 1)"
    debug: "extensive debug output"
    draw: "draw pictures around the interesting edges"
    re_score: "rescore paths via HMMer"
    annotate_graph: "emit paths in GFA graph"
    acc: "prefer accessions over names in output"
    no_ali: "'t output alignments, so output is smaller"
    report_sequences_evalue_threshold: "report sequences <= this E-value threshold in output"
    report_sequences_score_threshold: "report sequences >= this score threshold in output"
    dome: "report domains <= this E-value threshold in output"
    do_mt: "report domains >= this score cutoff in output"
    ince: "consider sequences <= this E-value threshold as significant"
    in_ct: "consider sequences >= this score threshold as significant"
    inc_dome: "consider domains <= this E-value threshold as significant"
    inc_do_mt: "consider domains >= this score threshold as significant"
    cut_ga: "use profile's GA gathering cutoffs to set all thresholding"
    cut_nc: "use profile's NC noise cutoffs to set all thresholding"
    cut_tc: "use profile's TC trusted cutoffs to set all thresholding"
    max: "Turn all heuristic filters off (less speed, more power)"
    fone: "Stage 1 (MSV) threshold: promote hits w/ P <= F1"
    f_two: "Stage 2 (Vit) threshold: promote hits w/ P <= F2"
    f_three: "Stage 3 (Fwd) threshold: promote hits w/ P <= F3"
    parallel_components: "process connected components of neighborhood subgraph in parallel [default: false]"
    max_insertion_length: "maximal allowed number of successive I-emissions [default: 30]"
    expand_coef: "overhang expansion coefficient for neighborhood search [default: 2]"
    expand_const: "const addition to overhang values for neighborhood search [default: 20]"
    no_top_score_filter: "disable top score Event Graph vertices filter [default: false]"
    no_fast_forward: "disable fast forward in I-loops processing [default: false]"
    known_sequences: "FASTA file with known sequnces that should be definitely found"
    export_event_graph: "export event graph in cereal format\\n"
  }
  output {
    File out_stdout = stdout()
  }
}