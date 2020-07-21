class: CommandLineTool
id: ../../../anomaly.cwl
inputs:
- id: start_sample_format
  doc: 'Use comma-separated list of codons as start codons Sample format:  -A atg,gtg
    Default start codons are atg,gtg,ttg'
  type: string
  inputBinding:
    prefix: -A
- id: omit_check_first
  doc: Omit the check that the first codon is a start codon.
  type: boolean
  inputBinding:
    prefix: -s
- id: check_codon_coordinate
  doc: Check whether the codon preceding the start coordinate position is a stop codon.  This
    is useful if the coordinates represent the entire region between stop codons.
  type: boolean
  inputBinding:
    prefix: -t
- id: stop_codons_format
  doc: 'Use comma-separated list of codons as stop codons Sample format:  -Z tag,tga,taa'
  type: string
  inputBinding:
    prefix: -Z
- id: sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: coord_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- anomaly
