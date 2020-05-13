class: CommandLineTool
id: minced.cwl
inputs:
- id: file_fa
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: output_file_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_file_gff
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: search_wl
  doc: 'Length of search window used to discover CRISPRs (range: 6-9). Default: 8'
  type: boolean
  inputBinding:
    prefix: -searchWL
- id: min_nr
  doc: 'Minimum number of repeats a CRISPR must contain. Default: 3'
  type: boolean
  inputBinding:
    prefix: -minNR
- id: min_rl
  doc: 'Minimum length of the CRISPR repeats. Default: 23'
  type: boolean
  inputBinding:
    prefix: -minRL
- id: max_rl
  doc: 'Maximum length of the CRISPR repeats. Default: 47'
  type: boolean
  inputBinding:
    prefix: -maxRL
- id: mins_l
  doc: 'Minimum length of the CRISPR spacers. Default: 26'
  type: boolean
  inputBinding:
    prefix: -minSL
- id: max_sl
  doc: 'Maximum length of the CRISPR spacers. Default: 50'
  type: boolean
  inputBinding:
    prefix: -maxSL
- id: gff
  doc: 'Output summary results in gff format containing only the positions of the
    CRISPR arrays. Default: false'
  type: boolean
  inputBinding:
    prefix: -gff
- id: gff_full
  doc: 'Output detailed results in gff format containing positions of CRISPR arrays
    and all repeat units. Default: false'
  type: boolean
  inputBinding:
    prefix: -gffFull
- id: spacers
  doc: 'Output a fasta formatted file containing the spacers. Default: false'
  type: boolean
  inputBinding:
    prefix: -spacers
outputs: []
cwlVersion: v1.1
baseCommand:
- minced
