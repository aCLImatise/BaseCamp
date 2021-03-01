class: CommandLineTool
id: splash_all.cwl
inputs:
- id: in_reference
  doc: Reference fasta file
  type: File?
  inputBinding:
    prefix: --reference
- id: in_bed
  doc: BED file
  type: File?
  inputBinding:
    prefix: --bed
- id: in_read_length
  doc: All UTRs short than the read length are removed.
  type: long?
  inputBinding:
    prefix: --read-length
- id: in_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory?
  inputBinding:
    prefix: --outputDir
- id: in_snp_rate
  doc: SNP rate in UTRs
  type: string?
  inputBinding:
    prefix: --snp-rate
- id: in_read_coverage
  doc: Read coverage (if read number is not specified)
  type: long?
  inputBinding:
    prefix: --read-coverage
- id: in_sequencing_error
  doc: Sequencing error
  type: string?
  inputBinding:
    prefix: --sequencing-error
- id: in_pulse
  doc: Pulse in minutes
  type: string?
  inputBinding:
    prefix: --pulse
- id: in_rates
  doc: List of rates
  type: string?
  inputBinding:
    prefix: --rates
- id: in_chase
  doc: Chase in minutes
  type: string?
  inputBinding:
    prefix: --chase
- id: in_tc_rate
  doc: T->C conversion rate
  type: string?
  inputBinding:
    prefix: --tc-rate
- id: in_min_half_life
  doc: Lower bound for the simulated half lifes in minutes
  type: long?
  inputBinding:
    prefix: --min-halflife
- id: in_max_half_life
  doc: Upper bound for the simulated half lifes in minutes
  type: long?
  inputBinding:
    prefix: --max-halflife
- id: in_threads
  doc: Thread number
  type: long?
  inputBinding:
    prefix: --threads
- id: in_replicates
  doc: Number of replicates
  type: long?
  inputBinding:
    prefix: --replicates
- id: in_skip_turnover
  doc: Take half-life from score filed of input BED file
  type: boolean?
  inputBinding:
    prefix: --skip-turnover
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- splash
- all
