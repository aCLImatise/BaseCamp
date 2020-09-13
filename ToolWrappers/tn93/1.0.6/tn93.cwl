class: CommandLineTool
id: ../../../tn93.cwl
inputs:
- id: in_direct_output_file
  doc: direct the output to a file named OUTPUT (default=stdout)
  type: File
  inputBinding:
    prefix: -o
- id: in_only_report_count
  doc: only report (count) distances below this threshold (>=0, default=0.015)
  type: double
  inputBinding:
    prefix: -t
- id: in_handle_ambigous_nucleotides
  doc: "handle ambigous nucleotides using one of the following strategies (default=resolve)\n\
    resolve: resolve ambiguities to minimize distance (e.g.R matches A);\naverage:\
    \ average ambiguities (e.g.R-A is 0.5 A-A and 0.5 G-A);\nskip: do not include\
    \ sites with ambiguous nucleotides in distance calculations;\ngapmm: a gap ('-')\
    \ matched to anything other than another gap is like matching an N (4-fold ambig)\
    \ to it;\na string (e.g. RY): any ambiguity in the list is RESOLVED; any ambiguitiy\
    \ NOT in the list is averaged (LIST-NOT LIST will also be averaged);"
  type: string
  inputBinding:
    prefix: -a
- id: in_combination_ambigs_limit
  doc: "in combination with AMBIGS, works to limit (for resolve and string options\
    \ to AMBIG)\nthe maximum tolerated FRACTION of ambiguous characters; sequences\
    \ whose pairwise comparisons\ninclude no more than FRACTION [0,1] of sites with\
    \ resolvable ambiguities will be resolved\nwhile all others will be AVERAGED (default\
    \ = 1.0)"
  type: string
  inputBinding:
    prefix: -g
- id: in_controls_format_set
  doc: "controls the format of the output unless -c is set (default=csv)\ncsv: seqname1,\
    \ seqname2, distance;\ncsvn: 1, 2, distance;\nhyphy: {{d11,d12,..,d1n}...{dn1,dn2,...,dnn}},\
    \ where distances above THRESHOLD are set to 100;"
  type: long
  inputBinding:
    prefix: -f
- id: in_only_process_pairs
  doc: 'only process pairs of sequences that overlap over at least OVERLAP nucleotides
    (an integer >0, default=100):'
  type: long
  inputBinding:
    prefix: -l
- id: in_sequence_name_form
  doc: "if sequence name is of the form 'somethingCOUNTS_IN_NAMEinteger' then treat\
    \ the integer as a copy number\nwhen computing distance histograms (a character,\
    \ default=':'):"
  type: long
  inputBinding:
    prefix: -d
- id: in_specified_read_file
  doc: if specified, read another FASTA file from SECOND_FASTA and perform pairwise
    comparison BETWEEN the files (default=NULL)
  type: File
  inputBinding:
    prefix: -s
- id: in_bootstrap_alignment_columns
  doc: "bootstrap alignment columns before computing distances (default = false)\n\
    when -s is supplied, permutes the assigment of sequences to files\ninteracts with\
    \ -r option"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_b_specified_supplied
  doc: "if -b is specified AND -s is supplied, using -r will bootstrap across sites\n\
    instead of allocating sequences to 'compartments' randomly"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_only_count_pairs
  doc: only count the pairs below a threshold, do not write out all the pairs
  type: boolean
  inputBinding:
    prefix: -c
- id: in_compute_inter_
  doc: "compute inter- and intra-population means suitable for FST caclulations\n\
    only applied when -s is used to provide a second file"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_subsample_sequences_value
  doc: subsample sequences with specified probability (a value between 0 and 1, default
    = 1.0)
  type: double
  inputBinding:
    prefix: -u
- id: in_report_distances_sequence
  doc: "report distances between each sequence and itself (as 0); this is useful to\
    \ ensure every sequence\nin the input file appears in the output, e.g. for network\
    \ construction to contrast clustered/unclustered"
  type: boolean
  inputBinding:
    prefix: '-0'
- id: in_report_progress_updates
  doc: do not report progress updates and other diagnostics to stderr
  type: boolean
  inputBinding:
    prefix: -q
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_direct_output_file
  doc: direct the output to a file named OUTPUT (default=stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_direct_output_file)
cwlVersion: v1.1
baseCommand:
- tn93
