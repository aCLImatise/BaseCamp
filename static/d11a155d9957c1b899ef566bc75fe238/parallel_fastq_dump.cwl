class: CommandLineTool
id: parallel_fastq_dump.cwl
inputs:
- id: sra_id
  doc: SRA id
  type: string
  inputBinding:
    prefix: --sra-id
- id: threads
  doc: number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: outdir
  doc: output directory
  type: string
  inputBinding:
    prefix: --outdir
- id: tmpdir
  doc: temporary directory
  type: string
  inputBinding:
    prefix: --tmpdir
- id: min_spot_id
  doc: Minimum spot id
  type: long
  inputBinding:
    prefix: --minSpotId
- id: max_spot_id
  doc: Maximum spot id
  type: long
  inputBinding:
    prefix: --maxSpotId
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel-fastq-dump
