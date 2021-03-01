class: CommandLineTool
id: iu_filter_quality_bokulich.cwl
inputs:
- id: in_minimal_highquality_read
  doc: 'Minimal high-quality read length (default: 0.75)'
  type: double?
  inputBinding:
    prefix: -p
- id: in_minimum_phred_score
  doc: "Minimum PHRED score to identify low quality bases\n(default: 3)"
  type: long?
  inputBinding:
    prefix: -q
- id: in_maximum_consecutive_lowquality
  doc: 'Maximum of consecutive low-quality calls (default: 3)'
  type: long?
  inputBinding:
    prefix: -r
- id: in_maximum_ambiguous_calls
  doc: 'Maximum of ambiguous calls allowed (default: 0)'
  type: long?
  inputBinding:
    prefix: -n
- id: in_ignore_def_lines
  doc: "If FASTQ files are not CASAVA outputs, parsing the\nheader info may go wrong.\
    \ This flag tells the software\nto skip parsing deflines."
  type: boolean?
  inputBinding:
    prefix: --ignore-deflines
- id: in_visualize_quality_curves
  doc: "When set, mean quality score for individual bases will\nbe stored and visualized\
    \ for each group of reads."
  type: boolean?
  inputBinding:
    prefix: --visualize-quality-curves
- id: in_limit_num_pairs
  doc: "Put a limit to the number of pairs to analyze. For\ntesting purposes."
  type: long?
  inputBinding:
    prefix: --limit-num-pairs
- id: in_print_qual_scores
  doc: "When set, the script will print out the Q-scores the\nway it sees it in the\
    \ FASTQ file. This flag will\ngenerate a lot of useless output to the stdout,\
    \ and\nyou should not use it if you are not testing\nsomething."
  type: File?
  inputBinding:
    prefix: --print-qual-scores
- id: in_store_read_fate
  doc: "As it goes through your raw reads, this program keeps\ntrack of the read fate\
    \ so you can learn what happened\nto a given read ID in your raw input data once\
    \ the\nanalysis is done. This output can become extremely\nlarge, and often is\
    \ utterly useless to you unless you\nhave a very specific benchmarking or debugging\n\
    interestes, hence, it is not stored by default. You\ncan change that behavior\
    \ by using this flag, and ask\nillumina-utils to store this data on your disk.\n"
  type: boolean?
  inputBinding:
    prefix: --store-read-fate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_print_qual_scores
  doc: "When set, the script will print out the Q-scores the\nway it sees it in the\
    \ FASTQ file. This flag will\ngenerate a lot of useless output to the stdout,\
    \ and\nyou should not use it if you are not testing\nsomething."
  type: File?
  outputBinding:
    glob: $(inputs.in_print_qual_scores)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/illumina-utils:2.10--py_0
cwlVersion: v1.1
baseCommand:
- iu-filter-quality-bokulich
