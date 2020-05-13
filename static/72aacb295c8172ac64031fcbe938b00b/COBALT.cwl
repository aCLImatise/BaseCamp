class: CommandLineTool
id: COBALT.cwl
inputs:
- id: gc_profile
  doc: Location of GC Profile
  type: string
  inputBinding:
    prefix: -gc_profile
- id: min_quality
  doc: Min quality [10]
  type: string
  inputBinding:
    prefix: -min_quality
- id: output_dir
  doc: Output directory
  type: string
  inputBinding:
    prefix: -output_dir
- id: ref_genome
  doc: Path to reference genome fasta file if using CRAM files
  type: string
  inputBinding:
    prefix: -ref_genome
- id: reference
  doc: Name of reference sample
  type: string
  inputBinding:
    prefix: -reference
- id: reference_bam
  doc: Path to reference bam file
  type: string
  inputBinding:
    prefix: -reference_bam
- id: threads
  doc: Number of threads [4]
  type: string
  inputBinding:
    prefix: -threads
- id: tumor
  doc: Name of tumor sample
  type: string
  inputBinding:
    prefix: -tumor
- id: tumor_bam
  doc: Path to tumor bam file
  type: string
  inputBinding:
    prefix: -tumor_bam
- id: validation_stringency
  doc: 'SAM validation strategy: STRICT, SILENT, LENIENT [STRICT]'
  type: string
  inputBinding:
    prefix: -validation_stringency
outputs: []
cwlVersion: v1.1
baseCommand:
- COBALT
