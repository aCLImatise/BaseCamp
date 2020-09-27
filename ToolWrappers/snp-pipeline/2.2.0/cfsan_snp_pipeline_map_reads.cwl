class: CommandLineTool
id: cfsan_snp_pipeline_map_reads.cwl
inputs:
- id: in_force
  doc: "Force processing even when result files already exist\nand are newer than\
    \ inputs (default: False)"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: 'Number of CPU cores to use (default: 8)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_reference_file
  doc: Relative or absolute path to the reference fasta file
  type: string
  inputBinding:
    position: 0
- id: in_sample_fast_q_file_one
  doc: Relative or absolute path to the fastq file
  type: long
  inputBinding:
    position: 1
- id: in_sample_fast_q_file_two
  doc: "Optional relative or absolute path to the mate fastq\nfile, if paired (default:\
    \ None)"
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cfsan_snp_pipeline
- map_reads
