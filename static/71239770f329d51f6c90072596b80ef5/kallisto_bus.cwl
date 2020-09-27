class: CommandLineTool
id: kallisto_bus.cwl
inputs:
- id: in_index
  doc: "Filename for the kallisto index to be used for\npseudoalignment"
  type: File
  inputBinding:
    prefix: --index
- id: in_output_dir
  doc: Directory to write output to
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_technology
  doc: Single-cell technology used
  type: string
  inputBinding:
    prefix: --technology
- id: in_list
  doc: List all single-cell technologies supported
  type: boolean
  inputBinding:
    prefix: --list
- id: in_threads
  doc: 'Number of threads to use (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_bam
  doc: Input file is a BAM file
  type: boolean
  inputBinding:
    prefix: --bam
- id: in_num
  doc: "Output number of read in flag column (incompatible with --bam)\n--verbose\
    \                 Print out progress information every 1M proccessed reads\n"
  type: boolean
  inputBinding:
    prefix: --num
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_q_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory to write output to
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- kallisto
- bus
