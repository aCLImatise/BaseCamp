class: CommandLineTool
id: centrifuge_build.cwl
inputs:
- id: in_reference_sequences_given
  doc: "reference sequences given on cmd line (as\n<reference_in>)"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_no_auto
  doc: disable automatic -p/--bmax/--dcv memory-fitting
  type: boolean?
  inputBinding:
    prefix: --noauto
- id: in_bmax
  doc: max bucket sz for blockwise suffix-array builder
  type: long?
  inputBinding:
    prefix: --bmax
- id: in_bmax_divn
  doc: 'max bucket sz as divisor of ref len (default: 4)'
  type: long?
  inputBinding:
    prefix: --bmaxdivn
- id: in_dcv
  doc: 'diff-cover period for blockwise (default: 1024)'
  type: long?
  inputBinding:
    prefix: --dcv
- id: in_no_dc
  doc: disable diff-cover (algorithm becomes quadratic)
  type: boolean?
  inputBinding:
    prefix: --nodc
- id: in_no_ref
  doc: don't build .3/.4.bt2 (packed reference) portion
  type: boolean?
  inputBinding:
    prefix: --noref
- id: in_just_ref
  doc: just build .3/.4.bt2 (packed reference) portion
  type: boolean?
  inputBinding:
    prefix: --justref
- id: in_off_rate
  doc: 'SA is sampled every 2^offRate BWT chars (default: 5)'
  type: long?
  inputBinding:
    prefix: --offrate
- id: in_f_tab_chars
  doc: '# of chars consumed in initial lookup (default: 10)'
  type: long?
  inputBinding:
    prefix: --ftabchars
- id: in_conversion_table
  doc: a table that converts any id to a taxonomy id
  type: File?
  inputBinding:
    prefix: --conversion-table
- id: in_taxonomy_tree
  doc: <file name>  taxonomy tree
  type: boolean?
  inputBinding:
    prefix: --taxonomy-tree
- id: in_name_table
  doc: <file name>  names corresponding to taxonomic IDs
  type: boolean?
  inputBinding:
    prefix: --name-table
- id: in_size_table
  doc: <file name>  table of contig (or genome) sizes
  type: boolean?
  inputBinding:
    prefix: --size-table
- id: in_seed
  doc: seed for random number generator
  type: long?
  inputBinding:
    prefix: --seed
- id: in_quiet
  doc: verbose output (for debugging)
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_threads
  doc: number of alignment threads to launch (1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_km_er_count
  doc: k size for counting the number of distinct k-mer
  type: long?
  inputBinding:
    prefix: --kmer-count
- id: in_reference_in
  doc: comma-separated list of files with ref sequences
  type: string
  inputBinding:
    position: 0
- id: in_centrifuge_index_base
  doc: write cf data to files with this dir/basename
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- centrifuge-build
