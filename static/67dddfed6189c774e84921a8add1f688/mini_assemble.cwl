class: CommandLineTool
id: mini_assemble.cwl
inputs:
- id: in_fastx_input_reads
  doc: fastx input reads (required).
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_reference_fasta_assembly
  doc: reference fasta for reference-guided consensus (instead of de novo assembly)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_output_folder_default
  doc: 'output folder (default: assm).'
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_output_file_prefix
  doc: 'output file prefix (default: reads).'
  type: File?
  inputBinding:
    prefix: -p
- id: in_number_minimap_racon
  doc: 'number of minimap and racon threads (default: 1).'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_number_racon_rounds
  doc: 'number of racon rounds (default: 4).'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_number_racon_shuffles
  doc: 'number of racon shuffles (default: 1. If not 1, should be >10).'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_racon_window_length
  doc: 'racon window length (default: 500).'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_keep_files_default
  doc: 'keep intermediate files (default: delete).'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_minimaps_default_m
  doc: "minimap's -K option (default: 500M)."
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_trim_adapters_reads
  doc: trim adapters from reads prior to everything else.
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_error_correct_e
  doc: "error correct longest e% of reads prior to assembly, or an estimated coverage\
    \ (e.g. 2x).\nFor an estimated coverage, the -l option must be a fastx or a length\
    \ (e.g. 4.8mb)."
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_reference_length_number
  doc: Reference length, either as a number (e.g. 4.8mb) or fastx from which length
    will be calculated.
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_log_commands_running
  doc: log all commands before running.
  type: boolean?
  inputBinding:
    prefix: -x
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder_default
  doc: 'output folder (default: assm).'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder_default)
- id: out_output_file_prefix
  doc: 'output file prefix (default: reads).'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- mini_assemble
