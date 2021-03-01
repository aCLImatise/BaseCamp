class: CommandLineTool
id: splash_reads.cwl
inputs:
- id: in_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory?
  inputBinding:
    prefix: --outputDir
- id: in_sample_name
  doc: Name of sample
  type: string?
  inputBinding:
    prefix: --sample-name
- id: in_bed
  doc: BED file
  type: File?
  inputBinding:
    prefix: --bed
- id: in_read_length
  doc: Read length
  type: long?
  inputBinding:
    prefix: --read-length
- id: in_read_number
  doc: Number of reads to simulate
  type: long?
  inputBinding:
    prefix: --read-number
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
- id: in_chase
  doc: Chase in minutes
  type: string?
  inputBinding:
    prefix: --chase
- id: in_tc_rate
  doc: "T->C conversion rate\n"
  type: string?
  inputBinding:
    prefix: --tc-rate
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
- reads
