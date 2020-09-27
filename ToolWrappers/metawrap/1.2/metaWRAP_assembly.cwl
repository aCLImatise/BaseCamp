class: CommandLineTool
id: metaWRAP_assembly.cwl
inputs:
- id: in_forward_fastq_reads
  doc: forward fastq reads
  type: long
  inputBinding:
    prefix: '-1'
- id: in_reverse_fastq_reads
  doc: reverse fastq reads
  type: long
  inputBinding:
    prefix: '-2'
- id: in_output_directory
  doc: output directory
  type: Directory
  inputBinding:
    prefix: -o
- id: in_memory_gb_default
  doc: memory in GB (default=24)
  type: long
  inputBinding:
    prefix: -m
- id: in_number_of_threads
  doc: number of threads (defualt=1)
  type: long
  inputBinding:
    prefix: -t
- id: in_minimum_length_assembled
  doc: minimum length of assembled contigs (default=1000)
  type: long
  inputBinding:
    prefix: -l
- id: in_mega_hit
  doc: assemble with megahit (default)
  type: boolean
  inputBinding:
    prefix: --megahit
- id: in_meta_spades
  doc: assemble with metaspades instead of megahit (better results but slower amd
    higher memory requirement)
  type: boolean
  inputBinding:
    prefix: --metaspades
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- metaWRAP
- assembly
