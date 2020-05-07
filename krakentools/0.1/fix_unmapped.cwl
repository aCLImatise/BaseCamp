class: CommandLineTool
id: fix_unmapped.py.cwl
inputs:
- id: input_file
  doc: Input file containing accession IDs to map. Multi- column files accepted. Only
    accessions in the first column will be mapped.
  type: string
  inputBinding:
    prefix: --input_file
- id: accession_2taxid
  doc: 'Accession2taxid reference mappings to search. NCBI accession2taxid format
    required: 4 columns with accessions in column 1 and taxonomy IDs in column 3.'
  type: string[]
  inputBinding:
    prefix: --accession2taxid
- id: output_file
  doc: Output file with 2 tab-delimited columns for accessions and taxids
  type: string
  inputBinding:
    prefix: --output_file
- id: remaining
  doc: Name of text file containing non-found accessions from input file
  type: string
  inputBinding:
    prefix: --remaining
outputs: []
cwlVersion: v1.1
baseCommand:
- fix_unmapped.py
