class: CommandLineTool
id: inStrain_quick_profile.cwl
inputs:
- id: bam
  doc: 'A bam file to profile (default: None)'
  type: string
  inputBinding:
    prefix: --bam
- id: fast_a
  doc: 'The .fasta file to profile (default: None)'
  type: string
  inputBinding:
    prefix: --fasta
- id: stb
  doc: 'Scaffold to bin file for genome-wide coverage and breadth (default: None)'
  type: string
  inputBinding:
    prefix: --stb
- id: output
  doc: 'Output prefix (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: processes
  doc: 'Number of processes to use (default: 6)'
  type: string
  inputBinding:
    prefix: --processes
- id: debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: breadth_cut_off
  doc: 'Minimum breadth to pull scaffolds (default: 0.5)'
  type: string
  inputBinding:
    prefix: --breadth_cutoff
- id: stringent_breadth_cut_off
  doc: 'Minimum breadth to let scaffold into coverm raw results (default: 0.01)'
  type: string
  inputBinding:
    prefix: --stringent_breadth_cutoff
outputs: []
cwlVersion: v1.1
baseCommand:
- inStrain
- quick_profile
