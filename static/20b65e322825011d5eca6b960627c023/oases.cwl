class: CommandLineTool
id: oases.cwl
inputs:
- id: directory
  doc: ': working directory name'
  type: Directory
  inputBinding:
    position: 0
- id: unused_reads
  doc: '<yes|no>          : export unused reads in UnusedReads.fa file (default: no)'
  type: boolean
  inputBinding:
    prefix: -unused_reads
- id: amos_file
  doc: '<yes|no>             : export assembly to AMOS file (default: no export)'
  type: boolean
  inputBinding:
    prefix: -amos_file
- id: alignments
  doc: '<yes|no>            : export a summary of contig alignment to the reference
    sequences (default: no)'
  type: boolean
  inputBinding:
    prefix: -alignments
- id: scaffolding
  doc: '<yes|no>           : Allow gaps in transcripts (default: no)'
  type: boolean
  inputBinding:
    prefix: -scaffolding
- id: degree_cut_off
  doc: ": Maximum allowed degree on either end of a contigg to consider it 'unique'\
    \ (default: 3)"
  type: long
  inputBinding:
    prefix: -degree_cutoff
outputs: []
cwlVersion: v1.1
baseCommand:
- oases
