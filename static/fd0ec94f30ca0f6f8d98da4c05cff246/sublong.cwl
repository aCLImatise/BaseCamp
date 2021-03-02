class: CommandLineTool
id: sublong.cwl
inputs:
- id: in_base_name_index
  doc: "Base name of the index. The index must be built as a full index\nand has only\
    \ one block."
  type: string?
  inputBinding:
    prefix: -i
- id: in_name_input_read
  doc: "Name of an input read file. Acceptable formats include gzipped\nFASTQ and\
    \ FASTQ (automatically identified)."
  type: File?
  inputBinding:
    prefix: -r
- id: in_name_output_file
  doc: Name of an output file in BAM format.
  type: File?
  inputBinding:
    prefix: -o
- id: in_sam_output
  doc: Save mapping results in SAM format.
  type: boolean?
  inputBinding:
    prefix: --SAMoutput
- id: in_number_cpu_threads
  doc: Number of CPU threads used. 1 by default.
  type: long?
  inputBinding:
    prefix: -T
- id: in_output_version_program
  doc: Output version of the program.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_turn_rnaseq_mode
  doc: Turn on the RNA-seq mode.
  type: boolean?
  inputBinding:
    prefix: -X
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of an output file in BAM format.
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- sublong
