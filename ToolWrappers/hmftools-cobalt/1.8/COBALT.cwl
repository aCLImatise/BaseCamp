class: CommandLineTool
id: COBALT.cwl
inputs:
- id: in_min_quality
  doc: Min quality [10]
  type: long
  inputBinding:
    prefix: -min_quality
- id: in_output_dir
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: -output_dir
- id: in_ref_genome
  doc: "Path to reference genome fasta file if\nusing CRAM files"
  type: File
  inputBinding:
    prefix: -ref_genome
- id: in_reference
  doc: Name of reference sample
  type: string
  inputBinding:
    prefix: -reference
- id: in_reference_bam
  doc: Path to reference bam file
  type: File
  inputBinding:
    prefix: -reference_bam
- id: in_threads
  doc: Number of threads [4]
  type: long
  inputBinding:
    prefix: -threads
- id: in_tumor
  doc: Name of tumor sample
  type: string
  inputBinding:
    prefix: -tumor
- id: in_tumor_bam
  doc: Path to tumor bam file
  type: File
  inputBinding:
    prefix: -tumor_bam
- id: in_validation_stringency
  doc: "SAM validation strategy: STRICT, SILENT,\nLENIENT [STRICT]\n"
  type: string
  inputBinding:
    prefix: -validation_stringency
- id: in_count_bam_lines_application
  doc: -gc_profile <arg>              Location of GC Profile
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- COBALT
