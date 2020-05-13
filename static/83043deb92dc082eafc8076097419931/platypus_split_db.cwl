class: CommandLineTool
id: platypus_split_db.cwl
inputs:
- id: tax_fp
  doc: 'tab separated file with two columns: name/identifier of the sequence and then
    the taxonomy. Note: the sequence identifier is the longest string before a space
    in the header of the sequence.  [required]'
  type: File
  inputBinding:
    prefix: --tax_fp
- id: seqs_fp
  doc: 'path to a FASTA formatted file to split in interest and rest. Note: sequence
    identifiers must match the ones in the taxonomy file.  [required]'
  type: File
  inputBinding:
    prefix: --seqs_fp
- id: output_fp
  doc: Path where the results are saved  [required]
  type: File
  inputBinding:
    prefix: --output_fp
- id: query
  doc: 'The query used to split the database, for example: salmonella. The query should
    be an exact, no wild cards, it is case insensitive and can have spaces'
  type: string
  inputBinding:
    prefix: --query
- id: split_fp
  doc: The tab-delimited query file, where each line is a different sequence and the
    first column is the sequence id.
  type: File
  inputBinding:
    prefix: --split_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- platypus
- split-db
