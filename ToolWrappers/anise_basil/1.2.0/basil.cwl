class: CommandLineTool
id: basil.cwl
inputs:
- id: in_quiet
  doc: Only print on errors.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Higher verbosity.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_very_verbose
  doc: Highest verbosity.
  type: boolean?
  inputBinding:
    prefix: --very-verbose
- id: in_input_reference
  doc: "FASTA file with the reference. Required when using Valid filetypes\nare: fasta\
    \ and fa."
  type: File?
  inputBinding:
    prefix: --input-reference
- id: in_input_mapping
  doc: 'SAM/BAM file to use as the input. Valid filetypes are: sam and bam.'
  type: File?
  inputBinding:
    prefix: --input-mapping
- id: in_out_vcf
  doc: "VCF file to write variations to. Use \"-\" for stdout. Valid filetype\nis:\
    \ vcf. Default: -."
  type: File?
  inputBinding:
    prefix: --out-vcf
- id: in_output_debug_dir
  doc: Directory for debug output files. Created if required.
  type: Directory?
  inputBinding:
    prefix: --output-debug-dir
- id: in_fragment_size_factor
  doc: "Factor to multiple fragment size stddev with to get allowed error.\nIn range\
    \ [0..inf]. Default: 8."
  type: long?
  inputBinding:
    prefix: --fragment-size-factor
- id: in_auto_library_num_records
  doc: "Number of records to use for automatic library evaluation. Set to 0\nto evaluate\
    \ all. In range [0..inf]. Default: 100000."
  type: long?
  inputBinding:
    prefix: --auto-library-num-records
- id: in_fragment_size_median
  doc: 'Median fragment size. In range [0..inf]. Default: 250.'
  type: long?
  inputBinding:
    prefix: --fragment-size-median
- id: in_fragment_size_std_dev
  doc: 'Fragment size standard deviation. In range [0..inf]. Default: 3.'
  type: long?
  inputBinding:
    prefix: --fragment-size-std-dev
- id: in_fragment_default_orientation
  doc: 'Default orientation. One of F+, F-, R+, and R-. Default: R+.'
  type: string?
  inputBinding:
    prefix: --fragment-default-orientation
- id: in_filter_max_coverage
  doc: "Filter out calls at locations that have a higher coverage than this\nnumber.\
    \ Set to 0 to disable filter. In range [0..inf]. Default: 200."
  type: long?
  inputBinding:
    prefix: --filter-max-coverage
- id: in_filter_min_aln_quality
  doc: "Ignore alignments with a quality below this value. In range\n[0..inf]. Default:\
    \ 0."
  type: long?
  inputBinding:
    prefix: --filter-min-aln-quality
- id: in_out_variation_type
  doc: "The types of variants to write out. One of insertion. Default:\ninsertion."
  type: string?
  inputBinding:
    prefix: --out-variation-type
- id: in_out_individual_name
  doc: 'The name of the individual in the output. Default: individual.'
  type: string?
  inputBinding:
    prefix: --out-individual-name
- id: in_clipping_window_radius
  doc: "Window radius to use for clipping position clustering. In range\n[0..inf].\
    \ Default: 20."
  type: long?
  inputBinding:
    prefix: --clipping-window-radius
- id: in_max_alignment_length
  doc: 'Maximal alignment length. In range [0..inf]. Default: 2000.'
  type: long?
  inputBinding:
    prefix: --max-alignment-length
- id: in_clipping_min_length
  doc: "Smallest number of characters that have to be soft-clipped such that\nthe\
    \ alignment is not ignored. Default: 15."
  type: long?
  inputBinding:
    prefix: --clipping-min-length
- id: in_clipping_min_coverage
  doc: "The number of clipping positions to find in one window such that the\nwindow\
    \ is not discarded. Default: 5."
  type: long?
  inputBinding:
    prefix: --clipping-min-coverage
- id: in_oea_cluster_selection
  doc: "Algorithm for OEA cluster selection. One of chaining and set_cover.\nDefault:\
    \ chaining."
  type: string?
  inputBinding:
    prefix: --oea-cluster-selection
- id: in_oea_min_support
  doc: "Smallest number of EOA reads to support an insertion. In range\n[1..inf].\
    \ Default: 4."
  type: long?
  inputBinding:
    prefix: --oea-min-support
- id: in_oea_min_support_each_side
  doc: "Smallest number of EOA reads on each side to support an insertion.\nIn range\
    \ [1..inf]. Default: 2."
  type: long?
  inputBinding:
    prefix: --oea-min-support-each-side
- id: in_realignment_num_threads
  doc: "Number of threads to use for the realignment. In range [1..inf].\nDefault:\
    \ 1."
  type: long?
  inputBinding:
    prefix: --realignment-num-threads
- id: in_breakpoint_window_radius
  doc: "Radius around breakpoints to extract for remapping. Set to 0 to use\nmaximal\
    \ fragment size. In range [0..inf]. Default: 0."
  type: long?
  inputBinding:
    prefix: --breakpoint-window-radius
- id: in_reference
  doc: is given by the FASTA file REF.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_debug_dir
  doc: Directory for debug output files. Created if required.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_debug_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- basil
