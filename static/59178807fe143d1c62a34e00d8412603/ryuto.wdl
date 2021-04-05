version 1.0

task Ryuto {
  input {
    Boolean? arg_path_gtfgff
    Int? guide_trust_level
    Boolean? arg_number_consecutive
    Boolean? arg_number_use
    Directory? arg_output_directory
    Boolean? arg_frunstranded_frfirststrandfrsecondstrand
    Boolean? add_option_ignore
    Boolean? arg_minimum_average
    Boolean? no_parse_heuristic
    Boolean? compute_singles
    Int? nc
    Int? ng
    Int? pos_merge
    Int? min_intron_length
    Int? max_intron_length
    Boolean? no_denoising
    Boolean? keep_introns
    Int? intron_threshold
    Int? broken_intron_threshold
    Int? exon_join_distance
    Boolean? no_trimming
    Int? trimming_rate
    Float? low_edge_mark
    Int? min_junction_coverage
    Int? min_junction_anchor
    Int? group_vote_low
    Int? group_vote_high
    Boolean? arg_minimum_capacity
    Float? mean_filter
    Float? score_filter
    Int? min_single_coverage
    Int? min_single_length
    Int? min_transcript_length_base
    Int? min_transcript_length_extension
    Float? region_group_filter
    Boolean? arg_reads_length
    Boolean? arg_minimal_distance
    Boolean? arg_maximal_distance
    Int? arc_granularity
    Int? min_raw_exon_length
    Int? max_path_enumeration
  }
  command <<<
    ryuto \
      ~{if (arg_path_gtfgff) then "-g" else ""} \
      ~{if defined(guide_trust_level) then ("--guide-trustlevel " +  '"' + guide_trust_level + '"') else ""} \
      ~{if (arg_number_consecutive) then "-w" else ""} \
      ~{if (arg_number_use) then "-t" else ""} \
      ~{if (arg_output_directory) then "-o" else ""} \
      ~{if (arg_frunstranded_frfirststrandfrsecondstrand) then "-l" else ""} \
      ~{if (add_option_ignore) then "-s" else ""} \
      ~{if (arg_minimum_average) then "-c" else ""} \
      ~{if (no_parse_heuristic) then "--no-parse-heuristic" else ""} \
      ~{if (compute_singles) then "--compute-singles" else ""} \
      ~{if defined(nc) then ("--nc " +  '"' + nc + '"') else ""} \
      ~{if defined(ng) then ("--ng " +  '"' + ng + '"') else ""} \
      ~{if defined(pos_merge) then ("--pos-merge " +  '"' + pos_merge + '"') else ""} \
      ~{if defined(min_intron_length) then ("--min-intron-length " +  '"' + min_intron_length + '"') else ""} \
      ~{if defined(max_intron_length) then ("--max-intron-length " +  '"' + max_intron_length + '"') else ""} \
      ~{if (no_denoising) then "--no-denoising" else ""} \
      ~{if (keep_introns) then "--keep-introns" else ""} \
      ~{if defined(intron_threshold) then ("--intron-threshold " +  '"' + intron_threshold + '"') else ""} \
      ~{if defined(broken_intron_threshold) then ("--broken-intron-threshold " +  '"' + broken_intron_threshold + '"') else ""} \
      ~{if defined(exon_join_distance) then ("--exon-join-distance " +  '"' + exon_join_distance + '"') else ""} \
      ~{if (no_trimming) then "--no-trimming" else ""} \
      ~{if defined(trimming_rate) then ("--trimming-rate " +  '"' + trimming_rate + '"') else ""} \
      ~{if defined(low_edge_mark) then ("--low-edge-mark " +  '"' + low_edge_mark + '"') else ""} \
      ~{if defined(min_junction_coverage) then ("--min-junction-coverage " +  '"' + min_junction_coverage + '"') else ""} \
      ~{if defined(min_junction_anchor) then ("--min-junction-anchor " +  '"' + min_junction_anchor + '"') else ""} \
      ~{if defined(group_vote_low) then ("--group-vote-low " +  '"' + group_vote_low + '"') else ""} \
      ~{if defined(group_vote_high) then ("--group-vote-high " +  '"' + group_vote_high + '"') else ""} \
      ~{if (arg_minimum_capacity) then "-p" else ""} \
      ~{if defined(mean_filter) then ("--mean-filter " +  '"' + mean_filter + '"') else ""} \
      ~{if defined(score_filter) then ("--score-filter " +  '"' + score_filter + '"') else ""} \
      ~{if defined(min_single_coverage) then ("--min-single-coverage " +  '"' + min_single_coverage + '"') else ""} \
      ~{if defined(min_single_length) then ("--min-single-length " +  '"' + min_single_length + '"') else ""} \
      ~{if defined(min_transcript_length_base) then ("--min-transcript-length-base " +  '"' + min_transcript_length_base + '"') else ""} \
      ~{if defined(min_transcript_length_extension) then ("--min-transcript-length-extension " +  '"' + min_transcript_length_extension + '"') else ""} \
      ~{if defined(region_group_filter) then ("--region-group-filter " +  '"' + region_group_filter + '"') else ""} \
      ~{if (arg_reads_length) then "-r" else ""} \
      ~{if (arg_minimal_distance) then "-x" else ""} \
      ~{if (arg_maximal_distance) then "-y" else ""} \
      ~{if defined(arc_granularity) then ("--arc-granularity " +  '"' + arc_granularity + '"') else ""} \
      ~{if defined(min_raw_exon_length) then ("--min-raw-exon-length " +  '"' + min_raw_exon_length + '"') else ""} \
      ~{if defined(max_path_enumeration) then ("--max-path-enumeration " +  '"' + max_path_enumeration + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ryuto:1.6.2--h986a166_0"
  }
  parameter_meta {
    arg_path_gtfgff: "[ --gtf-guide ] arg            Path to a gtf/gff file containing reference\\ngenes. (default: none)"
    guide_trust_level: "Level of trust in the given guides. 0 no\\ntrust. 100 maximal trust. Abstract\\nnon-linear variable! (default: 20)"
    arg_number_consecutive: "[ --pool ] arg                 Number of consecutive inputs to merge\\ninternally in groups."
    arg_number_use: "[ --threads ] arg              Number of threads to use in parallel.\\n(default: 1)"
    arg_output_directory: "[ --out-dir ] arg              The output directory for all data.\\n(default: ./)"
    arg_frunstranded_frfirststrandfrsecondstrand: "[ --library-type ] arg         fr-unstranded, fr-firststrand,\\nfr-secondstrand, ff-unstranded,\\nff-firststrand, or ff-secondstrand\\naccording to TopHat and Cufflinks\\ndefinitions. (default: fr-unstranded)"
    add_option_ignore: "[ --unstranded ]               Add this option to ignore strand\\ninformation and call everything on +\\nstrand. (default: none)"
    arg_minimum_average: "[ --base-coverage-filter ] arg Minimum average coverage for features to be\\nfiltered. Sets low-edge-mark, mean-filter,\\nand score-filter (default: 4.0)"
    no_parse_heuristic: "If several input files are used, use this to disable\\nthe heuristic to merge fragments. Increases needed RAM.\\n(default: use heuristic)"
    compute_singles: "If several input files are used, use this to compute\\ntranscripts for all individual transcripts. (default:\\nonly joined output)"
    nc: "Number of chromosomes processed in parallel. (# of\\nthreads = nc * ng; default: 1)"
    ng: "Number of graph per chromosome processed in parallel.\\n(# of threads = nc * ng; default: 1)"
    pos_merge: "Positions within this range of bases will be\\nclustered together. (default: 1)"
    min_intron_length: "Minimal length of predicted introns. (default: 5)"
    max_intron_length: "Maximal length of predicted introns. (default:\\n1,000,000)"
    no_denoising: "Add this option to disable denoising of flow\\ngraph capacities."
    keep_introns: "Add this option to keep all introns with read\\ncoverage intact."
    intron_threshold: "Percentage of coverage to existing splices\\nneeded to keep introns intact. (default: 30%)"
    broken_intron_threshold: "Percentage of coverage to existing splices\\nneeded to keep fragmented intron pieces intact.\\n(default: 15%)"
    exon_join_distance: "Join exons no more distant than this amount of\\nbp into one. (default: 5)"
    no_trimming: "Disable trimming of predicted transcripts based\\non coverage."
    trimming_rate: "Don't join exons if one is smaller than this\\npercentage of the bigger (default: 20%)"
    low_edge_mark: "Capacity of edges in the splitgraph considered\\nunlikely. (default: 4.0)"
    min_junction_coverage: "Minimal coverage to consider intron junctions in\\nthe graph. (default: 1)"
    min_junction_anchor: "Minimal length of bp evidence needed left and\\nright of a junction to consider it. (default: 10)"
    group_vote_low: "Multi assembly percentage required for simple\\nconsensus voting (default: 30%)"
    group_vote_high: "Multi assembly percentage required for\\nsuper-majority consensus voting (default: 60%)"
    arg_minimum_capacity: "[ --percent-filter ] arg           Minimum capacity to report retrieved\\ntranscripts compared to the largest\\ntranscript found. (default: 0%)"
    mean_filter: "Minimum average capacity to report\\nretrieved transcripts. (default: 4.0)"
    score_filter: "Minimum score to report retrieved\\ntranscripts. (default: 3.0)"
    min_single_coverage: "Minimal average coverage off single\\nexon transcripts to report. (default:\\n20)"
    min_single_length: "Minimal length off single exon\\ntranscripts to report. (default: 300)"
    min_transcript_length_base: "Minimal length of a transcripts to\\nreport in bp. (default: 200)"
    min_transcript_length_extension: "Additional length in bp required per\\nexon. (default: 50)"
    region_group_filter: "Regions where all transcripts are below\\nthis coverage are discarded. (default:\\n5.5)"
    arg_reads_length: "[ --min-readlength ] arg      Reads below this length will not be used for\\natom evidence. (default: 30)"
    arg_minimal_distance: "[ --min-paired-distance ] arg Minimal distance between two paired reads in\\norder to be considered. (default: 0)"
    arg_maximal_distance: "[ --max-paired-distance ] arg Maximal distance between two paired reads in\\norder to be considered. (default: 100000)"
    arc_granularity: "Maximum number of arcs per original arc on\\npseudo-polynomial convex cost flows.\\n(default: 500)"
    min_raw_exon_length: "Minimal number of basepairs needed to\\nconstitute a raw exon. (default: 3)"
    max_path_enumeration: "Maximal number of distinct paths enumerated\\non each side of an ambiguous node. (default:\\n10,000)"
  }
  output {
    File out_stdout = stdout()
    Directory out_arg_output_directory = "${in_arg_output_directory}"
  }
}