class: CommandLineTool
id: parallel_fastq_dump.cwl
inputs:
- id: in_sra_id
  doc: SRA id
  type: string
  inputBinding:
    prefix: --sra-id
- id: in_threads
  doc: number of threads
  type: long
  inputBinding:
    prefix: --threads
- id: in_outdir
  doc: output directory
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_tmpdir
  doc: temporary directory
  type: Directory
  inputBinding:
    prefix: --tmpdir
- id: in_min_spot_id
  doc: Minimum spot id
  type: long
  inputBinding:
    prefix: --minSpotId
- id: in_max_spot_id
  doc: Maximum spot id
  type: long
  inputBinding:
    prefix: --maxSpotId
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- parallel-fastq-dump
