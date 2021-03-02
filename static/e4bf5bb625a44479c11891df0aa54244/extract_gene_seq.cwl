class: CommandLineTool
id: extract_gene_seq.cwl
inputs:
- id: in_log_level
  doc: "Write a log file (--log-level=DEBUG for debug mode,\n--log-level=INFO for\
    \ info mode)"
  type: File?
  inputBinding:
    prefix: --log-level
- id: in_log
  doc: Path to log file. (accepts stdout)
  type: File?
  inputBinding:
    prefix: --log
- id: in_verbose
  doc: Flag for more verbose log output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: Human genome FASTA file
  type: File?
  inputBinding:
    prefix: --input
- id: in_bed
  doc: BED file annotation of genes
  type: File?
  inputBinding:
    prefix: --bed
- id: in_output_single_file
  doc: "Output a single FASTA file with gene sequences\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_extracts_gene_sequences
  doc: Extracts gene sequences from a genomic FASTA file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_single_file
  doc: "Output a single FASTA file with gene sequences\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_single_file)
hints: []
cwlVersion: v1.1
baseCommand:
- extract_gene_seq
