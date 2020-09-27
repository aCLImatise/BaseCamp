class: CommandLineTool
id: poretools_fasta.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_type
  doc: "Which type of FASTQ entries should be reported?\nDef.=all"
  type: string
  inputBinding:
    prefix: --type
- id: in_start
  doc: Only report reads from after start timestamp
  type: string
  inputBinding:
    prefix: --start
- id: in_end
  doc: Only report reads from before end timestamp
  type: string
  inputBinding:
    prefix: --end
- id: in_min_length
  doc: Minimum read length for FASTA entry to be reported.
  type: long
  inputBinding:
    prefix: --min-length
- id: in_max_length
  doc: Maximum read length for FASTA entry to be reported.
  type: long
  inputBinding:
    prefix: --max-length
- id: in_high_quality
  doc: Only report reads with more complement events than
  type: boolean
  inputBinding:
    prefix: --high-quality
- id: in_files
  doc: The input FAST5 files.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- poretools
- fasta
