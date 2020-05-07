class: CommandLineTool
id: _makenucseq.cwl
inputs:
- id: codon_file
  doc: codon      Optional codon usage file. Nucleotide sequences will be created
    as triplets matching the frequencies in the file, with the end trimmed to be in
    the correct reading frame.
  type: boolean
  inputBinding:
    prefix: -codonfile
- id: amount
  doc: integer    [100] Number of sequences created (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -amount
- id: length
  doc: integer    [100] Length of each sequence (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -length
outputs: []
cwlVersion: v1.1
baseCommand:
- _makenucseq
