class: CommandLineTool
id: metacherchant.sh.cwl
inputs:
- id: in_kmer_size_mandatory
  doc: k-mer size (MANDATORY)
  type: long
  inputBinding:
    prefix: --k
- id: in_seq
  doc: FASTA file with sequences (MANDATORY)
  type: File
  inputBinding:
    prefix: --seq
- id: in_output
  doc: output directory (MANDATORY)
  type: Directory
  inputBinding:
    prefix: --output
- id: in_memory
  doc: 'memory to use (for example: 1500M, 4G, etc.) (optional, default: 2 Gb)'
  type: long
  inputBinding:
    prefix: --memory
- id: in_work_dir
  doc: 'working directory (optional, default: workDir)'
  type: Directory
  inputBinding:
    prefix: --work-dir
- id: in_continue
  doc: continue the previous run from last succeed stage, saved in working directory
    (optional)
  type: boolean
  inputBinding:
    prefix: --continue
- id: in_force
  doc: force run with rewriting old results (optional)
  type: boolean
  inputBinding:
    prefix: --force
- id: in_launch_options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_parameters
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output directory (MANDATORY)
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- metacherchant.sh
