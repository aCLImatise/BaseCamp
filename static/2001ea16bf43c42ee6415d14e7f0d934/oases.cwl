class: CommandLineTool
id: ../../../oases.cwl
inputs:
- id: unused_reads
  doc: ': export unused reads in UnusedReads.fa file (default: no)'
  type: string
  inputBinding:
    prefix: -unused_reads
- id: amos_file
  doc: ': export assembly to AMOS file (default: no export)'
  type: string
  inputBinding:
    prefix: -amos_file
- id: alignments
  doc: ': export a summary of contig alignment to the reference sequences (default:
    no)'
  type: string
  inputBinding:
    prefix: -alignments
- id: scaffolding
  doc: ': Allow gaps in transcripts (default: no)'
  type: string
  inputBinding:
    prefix: -scaffolding
- id: degree_cut_off
  doc: ": Maximum allowed degree on either end of a contigg to consider it 'unique'\
    \ (default: 3)"
  type: long
  inputBinding:
    prefix: -degree_cutoff
- id: directory
  doc: ': working directory name'
  type: Directory
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- oases
