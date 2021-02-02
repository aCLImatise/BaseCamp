class: CommandLineTool
id: generate_kmer_distribution.py.cwl
inputs:
- id: in_input
  doc: "Kraken counts file for each genome mapped to the\noverall database."
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Output file containing each classified taxonomy ID and\nthe kmer distributions\
    \ of all genomes with this\nclassification.\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file containing each classified taxonomy ID and\nthe kmer distributions\
    \ of all genomes with this\nclassification.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- generate_kmer_distribution.py
