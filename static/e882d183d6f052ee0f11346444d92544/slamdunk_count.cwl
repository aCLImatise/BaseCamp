class: CommandLineTool
id: slamdunk_count.cwl
inputs:
- id: in_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory
  inputBinding:
    prefix: --outputDir
- id: in_snp_directory
  doc: Directory containing SNP files.
  type: Directory
  inputBinding:
    prefix: --snp-directory
- id: in_vcf
  doc: Externally provided custom variant file.
  type: File
  inputBinding:
    prefix: --vcf
- id: in_reference
  doc: Reference fasta file
  type: File
  inputBinding:
    prefix: --reference
- id: in_bed
  doc: BED file
  type: File
  inputBinding:
    prefix: --bed
- id: in_conversion_threshold
  doc: "Number of T>C conversions required to count read as\nT>C read (default: 1)"
  type: long
  inputBinding:
    prefix: --conversion-threshold
- id: in_max_read_length
  doc: Max read length in BAM file
  type: long
  inputBinding:
    prefix: --max-read-length
- id: in_min_base_qual
  doc: 'Min base quality for T -> C conversions (default: 27)'
  type: long
  inputBinding:
    prefix: --min-base-qual
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
- count
