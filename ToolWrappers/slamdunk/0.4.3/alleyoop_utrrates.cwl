class: CommandLineTool
id: alleyoop_utrrates.cwl
inputs:
- id: in_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory?
  inputBinding:
    prefix: --outputDir
- id: in_reference
  doc: Reference fasta file
  type: File?
  inputBinding:
    prefix: --reference
- id: in_min_base_quality
  doc: 'Minimal base quality for SNPs (default: 27)'
  type: long?
  inputBinding:
    prefix: --min-basequality
- id: in_multi_tc_stringency
  doc: 'Thread number (default: 1)'
  type: long?
  inputBinding:
    prefix: --multiTCStringency
- id: in_bed
  doc: BED file
  type: File?
  inputBinding:
    prefix: --bed
- id: in_max_read_length
  doc: "Max read length in BAM file (default: None)\n"
  type: long?
  inputBinding:
    prefix: --max-read-length
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
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- alleyoop
- utrrates
