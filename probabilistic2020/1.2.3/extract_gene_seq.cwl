class: CommandLineTool
id: extract_gene_seq.cwl
inputs:
- id: log_level
  doc: Write a log file (--log-level=DEBUG for debug mode, --log-level=INFO for info
    mode)
  type: string
  inputBinding:
    prefix: --log-level
- id: log
  doc: Path to log file. (accepts stdout)
  type: string
  inputBinding:
    prefix: --log
- id: verbose
  doc: Flag for more verbose log output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input
  doc: Human genome FASTA file
  type: string
  inputBinding:
    prefix: --input
- id: bed
  doc: BED file annotation of genes
  type: string
  inputBinding:
    prefix: --bed
- id: output
  doc: Output a single FASTA file with gene sequences
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_gene_seq
