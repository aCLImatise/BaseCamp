class: CommandLineTool
id: ../../../scssim_genreads.cwl
inputs:
- id: in_input
  doc: sequence file (.fasta) generated by simuVars program
  type: File
  inputBinding:
    prefix: --input
- id: in_primers
  doc: the number of primers [Default:100000]
  type: long
  inputBinding:
    prefix: --primers
- id: in_gamma
  doc: a parameter controlling the number of primers used in each cycle [Default:1e-9]
  type: double
  inputBinding:
    prefix: --gamma
- id: in_model
  doc: profile inferred from real sequencing data
  type: string
  inputBinding:
    prefix: --model
- id: in_layout
  doc: read layout (SE for single end, PE for paired-end) [Default:PE]
  type: string
  inputBinding:
    prefix: --layout
- id: in_coverage
  doc: sequencing coverage [Default:5]
  type: double
  inputBinding:
    prefix: --coverage
- id: in_i_size
  doc: mean insert size for paired-end sequencing [Default:260]
  type: long
  inputBinding:
    prefix: --isize
- id: in_threads
  doc: number of threads to use [Default:1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_output
  doc: the prefix of output file
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: the prefix of output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- scssim
- genreads
