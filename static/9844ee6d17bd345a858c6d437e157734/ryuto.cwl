class: CommandLineTool
id: ryuto.cwl
inputs:
- id: in_arg_path_gtfgff
  doc: "[ --gtf-guide ] arg            Path to a gtf/gff file containing reference\n\
    genes. (default: none)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_guide_trust_level
  doc: "Level of trust in the given guides. 0 no\ntrust. 100 maximal trust. Abstract\n\
    non-linear variable! (default: 20)"
  type: long?
  inputBinding:
    prefix: --guide-trustlevel
- id: in_arg_number_consecutive
  doc: "[ --pool ] arg                 Number of consecutive inputs to merge\ninternally\
    \ in groups."
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_arg_number_use
  doc: "[ --threads ] arg              Number of threads to use in parallel.\n(default:\
    \ 1)"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_arg_output_directory
  doc: "[ --out-dir ] arg              The output directory for all data.\n(default:\
    \ ./)"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_arg_frunstranded_frfirststrandfrsecondstrand
  doc: "[ --library-type ] arg         fr-unstranded, fr-firststrand,\nfr-secondstrand,\
    \ ff-unstranded,\nff-firststrand, or ff-secondstrand\naccording to TopHat and\
    \ Cufflinks\ndefinitions. (default: fr-unstranded)"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_add_option_ignore
  doc: "[ --unstranded ]               Add this option to ignore strand\ninformation\
    \ and call everything on +\nstrand. (default: none)"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_minimum_average
  doc: "[ --base-coverage-filter ] arg Minimum average coverage for features to be\n\
    filtered. Sets low-edge-mark, mean-filter,\nand score-filter (default: 4.0)"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_no_parse_heuristic
  doc: "If several input files are used, use this to disable\nthe heuristic to merge\
    \ fragments. Increases needed RAM.\n(default: use heuristic)"
  type: boolean?
  inputBinding:
    prefix: --no-parse-heuristic
- id: in_compute_singles
  doc: "If several input files are used, use this to compute\ntranscripts for all\
    \ individual transcripts. (default:\nonly joined output)"
  type: boolean?
  inputBinding:
    prefix: --compute-singles
- id: in_nc
  doc: "Number of chromosomes processed in parallel. (# of\nthreads = nc * ng; default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: --nc
- id: in_ng
  doc: "Number of graph per chromosome processed in parallel.\n(# of threads = nc\
    \ * ng; default: 1)"
  type: long?
  inputBinding:
    prefix: --ng
- id: in_pos_merge
  doc: "Positions within this range of bases will be\nclustered together. (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: --pos-merge
- id: in_min_intron_length
  doc: 'Minimal length of predicted introns. (default: 5)'
  type: long?
  inputBinding:
    prefix: --min-intron-length
- id: in_max_intron_length
  doc: "Maximal length of predicted introns. (default:\n1,000,000)"
  type: long?
  inputBinding:
    prefix: --max-intron-length
- id: in_no_denoising
  doc: "Add this option to disable denoising of flow\ngraph capacities."
  type: boolean?
  inputBinding:
    prefix: --no-denoising
- id: in_keep_introns
  doc: "Add this option to keep all introns with read\ncoverage intact."
  type: boolean?
  inputBinding:
    prefix: --keep-introns
- id: in_intron_threshold
  doc: "Percentage of coverage to existing splices\nneeded to keep introns intact.\
    \ (default: 30%)"
  type: long?
  inputBinding:
    prefix: --intron-threshold
- id: in_broken_intron_threshold
  doc: "Percentage of coverage to existing splices\nneeded to keep fragmented intron\
    \ pieces intact.\n(default: 15%)"
  type: long?
  inputBinding:
    prefix: --broken-intron-threshold
- id: in_exon_join_distance
  doc: "Join exons no more distant than this amount of\nbp into one. (default: 5)"
  type: long?
  inputBinding:
    prefix: --exon-join-distance
- id: in_no_trimming
  doc: "Disable trimming of predicted transcripts based\non coverage."
  type: boolean?
  inputBinding:
    prefix: --no-trimming
- id: in_trimming_rate
  doc: "Don't join exons if one is smaller than this\npercentage of the bigger (default:\
    \ 20%)"
  type: long?
  inputBinding:
    prefix: --trimming-rate
- id: in_low_edge_mark
  doc: "Capacity of edges in the splitgraph considered\nunlikely. (default: 4.0)"
  type: double?
  inputBinding:
    prefix: --low-edge-mark
- id: in_min_junction_coverage
  doc: "Minimal coverage to consider intron junctions in\nthe graph. (default: 1)"
  type: long?
  inputBinding:
    prefix: --min-junction-coverage
- id: in_min_junction_anchor
  doc: "Minimal length of bp evidence needed left and\nright of a junction to consider\
    \ it. (default: 10)"
  type: long?
  inputBinding:
    prefix: --min-junction-anchor
- id: in_group_vote_low
  doc: "Multi assembly percentage required for simple\nconsensus voting (default:\
    \ 30%)"
  type: long?
  inputBinding:
    prefix: --group-vote-low
- id: in_group_vote_high
  doc: "Multi assembly percentage required for\nsuper-majority consensus voting (default:\
    \ 60%)"
  type: long?
  inputBinding:
    prefix: --group-vote-high
- id: in_arg_minimum_capacity
  doc: "[ --percent-filter ] arg           Minimum capacity to report retrieved\n\
    transcripts compared to the largest\ntranscript found. (default: 0%)"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_mean_filter
  doc: "Minimum average capacity to report\nretrieved transcripts. (default: 4.0)"
  type: double?
  inputBinding:
    prefix: --mean-filter
- id: in_score_filter
  doc: "Minimum score to report retrieved\ntranscripts. (default: 3.0)"
  type: double?
  inputBinding:
    prefix: --score-filter
- id: in_min_single_coverage
  doc: "Minimal average coverage off single\nexon transcripts to report. (default:\n\
    20)"
  type: long?
  inputBinding:
    prefix: --min-single-coverage
- id: in_min_single_length
  doc: "Minimal length off single exon\ntranscripts to report. (default: 300)"
  type: long?
  inputBinding:
    prefix: --min-single-length
- id: in_min_transcript_length_base
  doc: "Minimal length of a transcripts to\nreport in bp. (default: 200)"
  type: long?
  inputBinding:
    prefix: --min-transcript-length-base
- id: in_min_transcript_length_extension
  doc: "Additional length in bp required per\nexon. (default: 50)"
  type: long?
  inputBinding:
    prefix: --min-transcript-length-extension
- id: in_region_group_filter
  doc: "Regions where all transcripts are below\nthis coverage are discarded. (default:\n\
    5.5)"
  type: double?
  inputBinding:
    prefix: --region-group-filter
- id: in_arg_reads_length
  doc: "[ --min-readlength ] arg      Reads below this length will not be used for\n\
    atom evidence. (default: 30)"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_minimal_distance
  doc: "[ --min-paired-distance ] arg Minimal distance between two paired reads in\n\
    order to be considered. (default: 0)"
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_arg_maximal_distance
  doc: "[ --max-paired-distance ] arg Maximal distance between two paired reads in\n\
    order to be considered. (default: 100000)"
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_arc_granularity
  doc: "Maximum number of arcs per original arc on\npseudo-polynomial convex cost\
    \ flows.\n(default: 500)"
  type: long?
  inputBinding:
    prefix: --arc-granularity
- id: in_min_raw_exon_length
  doc: "Minimal number of basepairs needed to\nconstitute a raw exon. (default: 3)"
  type: long?
  inputBinding:
    prefix: --min-raw-exon-length
- id: in_max_path_enumeration
  doc: "Maximal number of distinct paths enumerated\non each side of an ambiguous\
    \ node. (default:\n10,000)"
  type: long?
  inputBinding:
    prefix: --max-path-enumeration
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_directory
  doc: "[ --out-dir ] arg              The output directory for all data.\n(default:\
    \ ./)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_arg_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ryuto:1.6.1--h986a166_0
cwlVersion: v1.1
baseCommand:
- ryuto
