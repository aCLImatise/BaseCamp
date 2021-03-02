class: CommandLineTool
id: hera.cwl
inputs:
- id: in_output_directory_default
  doc: ':      Output directory (default: ./)'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_number_threads_default
  doc: ':      Number of threads (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_compress_level_default
  doc: ':      Compress level (1 - 9) (default: -1)'
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_number_bootstraps_default
  doc: ':      Number of bootstraps (default: 0)'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_output_bam_file
  doc: ':      Output bam file 0:true, 1: false (default: 0)'
  type: File?
  inputBinding:
    prefix: -w
- id: in_genome_fasta_file
  doc: ':      Genome fasta file (if not define, genome mapping will be ignore'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_output_prefix_default
  doc: ":      Output prefix (default: '')"
  type: boolean?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_default
  doc: ':      Output directory (default: ./)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_default)
- id: out_output_bam_file
  doc: ':      Output bam file 0:true, 1: false (default: 0)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_bam_file)
hints: []
cwlVersion: v1.1
baseCommand:
- hera
