class: CommandLineTool
id: basil.cwl
inputs:
- id: quiet
  doc: Only print on errors.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Higher verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: very_verbose
  doc: Highest verbosity.
  type: boolean
  inputBinding:
    prefix: --very-verbose
- id: input_reference
  doc: 'FASTA file with the reference. Required when using Valid filetypes are: fasta
    and fa.'
  type: string
  inputBinding:
    prefix: --input-reference
- id: input_mapping
  doc: 'SAM/BAM file to use as the input. Valid filetypes are: sam and bam.'
  type: string
  inputBinding:
    prefix: --input-mapping
- id: out_vcf
  doc: 'VCF file to write variations to. Use "-" for stdout. Valid filetype is: vcf.
    Default: -.'
  type: string
  inputBinding:
    prefix: --out-vcf
- id: output_debug_dir
  doc: Directory for debug output files. Created if required.
  type: File
  inputBinding:
    prefix: --output-debug-dir
- id: fragment_size_factor
  doc: 'Factor to multiple fragment size stddev with to get allowed error. In range
    [0..inf]. Default: 8.'
  type: string
  inputBinding:
    prefix: --fragment-size-factor
- id: auto_library_num_records
  doc: 'Number of records to use for automatic library evaluation. Set to 0 to evaluate
    all. In range [0..inf]. Default: 100000.'
  type: string
  inputBinding:
    prefix: --auto-library-num-records
- id: fragment_size_median
  doc: 'Median fragment size. In range [0..inf]. Default: 250.'
  type: long
  inputBinding:
    prefix: --fragment-size-median
- id: fragment_size_std_dev
  doc: 'Fragment size standard deviation. In range [0..inf]. Default: 3.'
  type: string
  inputBinding:
    prefix: --fragment-size-std-dev
- id: fragment_default_orientation
  doc: 'Default orientation. One of F+, F-, R+, and R-. Default: R+.'
  type: string
  inputBinding:
    prefix: --fragment-default-orientation
- id: filter_max_coverage
  doc: 'Filter out calls at locations that have a higher coverage than this number.
    Set to 0 to disable filter. In range [0..inf]. Default: 200.'
  type: string
  inputBinding:
    prefix: --filter-max-coverage
- id: filter_min_aln_quality
  doc: 'Ignore alignments with a quality below this value. In range [0..inf]. Default:
    0.'
  type: string
  inputBinding:
    prefix: --filter-min-aln-quality
- id: out_variation_type
  doc: 'The types of variants to write out. One of insertion. Default: insertion.'
  type: string
  inputBinding:
    prefix: --out-variation-type
- id: out_individual_name
  doc: 'The name of the individual in the output. Default: individual.'
  type: string
  inputBinding:
    prefix: --out-individual-name
- id: clipping_window_radius
  doc: 'Window radius to use for clipping position clustering. In range [0..inf].
    Default: 20.'
  type: string
  inputBinding:
    prefix: --clipping-window-radius
- id: max_alignment_length
  doc: 'Maximal alignment length. In range [0..inf]. Default: 2000.'
  type: string
  inputBinding:
    prefix: --max-alignment-length
- id: clipping_min_length
  doc: 'Smallest number of characters that have to be soft-clipped such that the alignment
    is not ignored. Default: 15.'
  type: string
  inputBinding:
    prefix: --clipping-min-length
- id: clipping_min_coverage
  doc: 'The number of clipping positions to find in one window such that the window
    is not discarded. Default: 5.'
  type: string
  inputBinding:
    prefix: --clipping-min-coverage
- id: oea_cluster_selection
  doc: 'Algorithm for OEA cluster selection. One of chaining and set_cover. Default:
    chaining.'
  type: string
  inputBinding:
    prefix: --oea-cluster-selection
- id: oea_min_support
  doc: 'Smallest number of EOA reads to support an insertion. In range [1..inf]. Default:
    4.'
  type: string
  inputBinding:
    prefix: --oea-min-support
- id: oea_min_support_each_side
  doc: 'Smallest number of EOA reads on each side to support an insertion. In range
    [1..inf]. Default: 2.'
  type: string
  inputBinding:
    prefix: --oea-min-support-each-side
- id: realignment_num_threads
  doc: 'Number of threads to use for the realignment. In range [1..inf]. Default:
    1.'
  type: string
  inputBinding:
    prefix: --realignment-num-threads
- id: breakpoint_window_radius
  doc: 'Radius around breakpoints to extract for remapping. Set to 0 to use maximal
    fragment size. In range [0..inf]. Default: 0.'
  type: string
  inputBinding:
    prefix: --breakpoint-window-radius
outputs: []
cwlVersion: v1.1
baseCommand:
- basil
