class: CommandLineTool
id: riboraptor_export_bed_fasta.cwl
inputs:
- id: in_region_bed
  doc: Path to bed file  [required]
  type: File
  inputBinding:
    prefix: --region_bed
- id: in_fast_a
  doc: Path to fasta file  [required]
  type: File
  inputBinding:
    prefix: --fasta
- id: in_prefix
  doc: Path to write output
  type: File
  inputBinding:
    prefix: --prefix
- id: in_chrom_sizes
  doc: Path to chrom.sizes  [required]
  type: File
  inputBinding:
    prefix: --chrom_sizes
- id: in_offset_five_p
  doc: Number of upstream bases to count(5')
  type: long
  inputBinding:
    prefix: --offset_5p
- id: in_offset_three_p
  doc: Number of downstream bases to count(3')
  type: long
  inputBinding:
    prefix: --offset_3p
- id: in_ignore_tx_version
  doc: Ignore version (.xyz) in gene names
  type: boolean
  inputBinding:
    prefix: --ignore_tx_version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: Path to write output
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
cwlVersion: v1.1
baseCommand:
- riboraptor
- export-bed-fasta
