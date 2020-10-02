class: CommandLineTool
id: anomaly.cwl
inputs:
- id: in_start_codonssample_format
  doc: "Use comma-separated list of codons as start codons\nSample format:  -A atg,gtg\n\
    Default start codons are atg,gtg,ttg"
  type: string
  inputBinding:
    prefix: -A
- id: in_omit_check_first
  doc: Omit the check that the first codon is a start codon.
  type: boolean
  inputBinding:
    prefix: -s
- id: in_check_codon_coordinate
  doc: "Check whether the codon preceding the start coordinate position\nis a stop\
    \ codon.  This is useful if the coordinates represent\nthe entire region between\
    \ stop codons."
  type: boolean
  inputBinding:
    prefix: -t
- id: in_stop_codonssample_format
  doc: "Use comma-separated list of codons as stop codons\nSample format:  -Z tag,tga,taa\n"
  type: string
  inputBinding:
    prefix: -Z
- id: in_sequence_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_coord_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anomaly
