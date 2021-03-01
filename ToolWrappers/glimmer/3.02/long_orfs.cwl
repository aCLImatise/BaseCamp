class: CommandLineTool
id: long_orfs.cwl
inputs:
- id: in_start_codons
  doc: "Use comma-separated list of codons as start codons\nSample format:  -A atg,gtg"
  type: string?
  inputBinding:
    prefix: --start_codons
- id: in_entropy
  doc: "Read entropy profiles from <filename>.  Format is one header\nline, then 20\
    \ lines of 3 columns each.  Columns are amino acid,\npositive entropy, negative\
    \ entropy.  Rows must be in order\nby amino acid code letter"
  type: File?
  inputBinding:
    prefix: --entropy
- id: in_fixed
  doc: "Do *NOT* automatically determine the minimum gene length so as\nto maximize\
    \ the total length of output regions"
  type: boolean?
  inputBinding:
    prefix: --fixed
- id: in_min_len
  doc: Only genes with length >= <n> will be considered
  type: long?
  inputBinding:
    prefix: --min_len
- id: in_ignore
  doc: "<filename> specifies regions of bases that are off\nlimits, so that no bases\
    \ within that area will be examined"
  type: File?
  inputBinding:
    prefix: --ignore
- id: in_linear
  doc: Assume linear rather than circular genome, i.e., no wraparound
  type: boolean?
  inputBinding:
    prefix: --linear
- id: in_length_opt
  doc: "Find and use the minimum gene length that maximizes the total\nlength of non-overlapping\
    \ genes, instead of maximizing the\nnumber of such genes"
  type: boolean?
  inputBinding:
    prefix: --length_opt
- id: in_no_header
  doc: "Do not include heading information in the output; only output\nthe orf-coordinate\
    \ lines"
  type: boolean?
  inputBinding:
    prefix: --no_header
- id: in_max_olap
  doc: "Set maximum overlap length to <n>.  Overlaps this short or shorter\nare ignored."
  type: long?
  inputBinding:
    prefix: --max_olap
- id: in_cut_off
  doc: Only genes with entropy distance score less than <x> will be considered
  type: string?
  inputBinding:
    prefix: --cutoff
- id: in_without_stops
  doc: "Do *NOT* include the stop codon in the output coordinates.\nBy default, it\
    \ is included."
  type: boolean?
  inputBinding:
    prefix: --without_stops
- id: in_trans_table
  doc: Use Genbank translation table number <n> for stop codons
  type: long?
  inputBinding:
    prefix: --trans_table
- id: in_stop_codons
  doc: "Use comma-separated list of codons as stop codons\nSample format:  -Z tag,tga,taa\n"
  type: string?
  inputBinding:
    prefix: --stop_codons
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- long-orfs
