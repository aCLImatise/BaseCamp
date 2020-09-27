class: CommandLineTool
id: slamdunk_filter.cwl
inputs:
- id: in_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory
  inputBinding:
    prefix: --outputDir
- id: in_bed
  doc: BED file, overrides MQ filter to 0
  type: File
  inputBinding:
    prefix: --bed
- id: in_min_mq
  doc: 'Minimum mapping quality (default: 2)'
  type: long
  inputBinding:
    prefix: --min-mq
- id: in_min_identity
  doc: 'Minimum alignment identity (default: 0.95)'
  type: long
  inputBinding:
    prefix: --min-identity
- id: in_max_nm
  doc: 'Maximum NM for alignments (default: -1)'
  type: long
  inputBinding:
    prefix: --max-nm
- id: in_threads
  doc: "Thread number (default: 1)\n"
  type: long
  inputBinding:
    prefix: --threads
- id: in_bam
  doc: Bam file(s)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- slamdunk
- filter
