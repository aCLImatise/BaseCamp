class: CommandLineTool
id: borf.cwl
inputs:
- id: fast_a_file
  doc: fasta file to predict ORFs
  type: string
  inputBinding:
    position: 0
- id: output_path
  doc: 'path to write output files. [OUTPUT_PATH].pep and [OUTPUT_PATH].txt (default:
    input .fa file name)'
  type: string
  inputBinding:
    prefix: --output_path
- id: strand
  doc: Predict orfs for both strands
  type: boolean
  inputBinding:
    prefix: --strand
- id: all_orfs
  doc: Return all ORFs for each sequence longer than the cutoff
  type: boolean
  inputBinding:
    prefix: --all_orfs
- id: orf_length
  doc: 'Minimum ORF length (AA). (default: 100)'
  type: string
  inputBinding:
    prefix: --orf_length
- id: upstream_incomplete_length
  doc: 'Minimum length (AA) of uninterupted sequence upstream of ORF to be included
    for incomplete_5prime transcripts (default: 50)'
  type: string
  inputBinding:
    prefix: --upstream_incomplete_length
- id: batch_size
  doc: Number of fasta records to read in in each batch
  type: string
  inputBinding:
    prefix: --batch_size
- id: force_overwrite
  doc: Force overwriting of output files?
  type: boolean
  inputBinding:
    prefix: --force_overwrite
outputs: []
cwlVersion: v1.1
baseCommand:
- borf
