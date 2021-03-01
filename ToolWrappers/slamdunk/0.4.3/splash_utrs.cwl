class: CommandLineTool
id: splash_utrs.cwl
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
  doc: Read length
  type: long?
  inputBinding:
    prefix: --read-length
- id: in_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory?
  inputBinding:
    prefix: --outputDir
- id: in_snp_rate
  doc: "SNP rate in UTRs\n"
  type: string?
  inputBinding:
    prefix: --snp-rate
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
- utrs
