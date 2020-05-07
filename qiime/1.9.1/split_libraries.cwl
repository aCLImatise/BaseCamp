class: CommandLineTool
id: split_libraries.py.cwl
inputs:
- id: map
  doc: 'name of mapping file. NOTE: Must contain a header line indicating SampleID
    in the first column and BarcodeSequence in the second, LinkerPrimerSequence in
    the third. [REQUIRED]'
  type: string
  inputBinding:
    prefix: --map
- id: fast_a
  doc: names of fasta files, comma-delimited [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta
outputs: []
cwlVersion: v1.1
baseCommand:
- split_libraries.py
