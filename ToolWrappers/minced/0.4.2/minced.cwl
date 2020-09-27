class: CommandLineTool
id: minced.cwl
inputs:
- id: in_search_wl
  doc: 'Length of search window used to discover CRISPRs (range: 6-9). Default: 8'
  type: boolean
  inputBinding:
    prefix: -searchWL
- id: in_min_nr
  doc: 'Minimum number of repeats a CRISPR must contain. Default: 3'
  type: boolean
  inputBinding:
    prefix: -minNR
- id: in_min_rl
  doc: 'Minimum length of the CRISPR repeats. Default: 23'
  type: boolean
  inputBinding:
    prefix: -minRL
- id: in_max_rl
  doc: 'Maximum length of the CRISPR repeats. Default: 47'
  type: boolean
  inputBinding:
    prefix: -maxRL
- id: in_mins_l
  doc: 'Minimum length of the CRISPR spacers. Default: 26'
  type: boolean
  inputBinding:
    prefix: -minSL
- id: in_max_sl
  doc: 'Maximum length of the CRISPR spacers. Default: 50'
  type: boolean
  inputBinding:
    prefix: -maxSL
- id: in_gff
  doc: "Output summary results in gff format containing\nonly the positions of the\
    \ CRISPR arrays. Default: false"
  type: boolean
  inputBinding:
    prefix: -gff
- id: in_gff_full
  doc: "Output detailed results in gff format containing\npositions of CRISPR arrays\
    \ and all repeat units. Default: false"
  type: boolean
  inputBinding:
    prefix: -gffFull
- id: in_spacers
  doc: 'Output a fasta formatted file containing the spacers. Default: false'
  type: File
  inputBinding:
    prefix: -spacers
- id: in_file_dot_fa
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_output_file_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file_dot_gff
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_spacers
  doc: 'Output a fasta formatted file containing the spacers. Default: false'
  type: File
  outputBinding:
    glob: $(inputs.in_spacers)
cwlVersion: v1.1
baseCommand:
- minced
