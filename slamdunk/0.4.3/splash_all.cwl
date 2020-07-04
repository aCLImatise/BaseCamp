class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/splash_all.cwl
inputs:
- id: reference
  doc: Reference fasta file
  type: string
  inputBinding:
    prefix: --reference
- id: bed
  doc: BED file
  type: string
  inputBinding:
    prefix: --bed
- id: read_length
  doc: All UTRs short than the read length are removed.
  type: string
  inputBinding:
    prefix: --read-length
- id: output_dir
  doc: Output directory for mapped BAM files.
  type: string
  inputBinding:
    prefix: --outputDir
- id: snp_rate
  doc: SNP rate in UTRs
  type: string
  inputBinding:
    prefix: --snp-rate
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
- id: rates
  doc: List of rates
  type: string
  inputBinding:
    prefix: --rates
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
- id: min_half_life
  doc: Lower bound for the simulated half lifes in minutes
  type: long
  inputBinding:
    prefix: --min-halflife
- id: max_half_life
  doc: Upper bound for the simulated half lifes in minutes
  type: long
  inputBinding:
    prefix: --max-halflife
- id: threads
  doc: Thread number
  type: string
  inputBinding:
    prefix: --threads
- id: replicates
  doc: Number of replicates
  type: string
  inputBinding:
    prefix: --replicates
- id: skip_turnover
  doc: Take half-life from score filed of input BED file
  type: boolean
  inputBinding:
    prefix: --skip-turnover
outputs: []
cwlVersion: v1.1
baseCommand:
- splash
- all
