class: CommandLineTool
id: ../../../splash_reads.cwl
inputs:
- id: output_dir
  doc: Output directory for mapped BAM files.
  type: string
  inputBinding:
    prefix: --outputDir
- id: sample_name
  doc: Name of sample
  type: string
  inputBinding:
    prefix: --sample-name
- id: bed
  doc: BED file
  type: string
  inputBinding:
    prefix: --bed
- id: read_length
  doc: Read length
  type: string
  inputBinding:
    prefix: --read-length
- id: read_number
  doc: Number of reads to simulate
  type: string
  inputBinding:
    prefix: --read-number
- id: read_coverage
  doc: Read coverage (if read number is not specified)
  type: string
  inputBinding:
    prefix: --read-coverage
- id: sequencing_error
  doc: Sequencing error
  type: string
  inputBinding:
    prefix: --sequencing-error
- id: pulse
  doc: Pulse in minutes
  type: string
  inputBinding:
    prefix: --pulse
- id: chase
  doc: Chase in minutes
  type: string
  inputBinding:
    prefix: --chase
- id: tc_rate
  doc: T->C conversion rate
  type: string
  inputBinding:
    prefix: --tc-rate
outputs: []
cwlVersion: v1.1
baseCommand:
- splash
- reads
