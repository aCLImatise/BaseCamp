class: CommandLineTool
id: ../../../mini_assemble.cwl
inputs:
- id: fastx_input_reads
  doc: fastx input reads (required).
  type: boolean
  inputBinding:
    prefix: -i
- id: reference_fasta_referenceguided
  doc: reference fasta for reference-guided consensus (instead of de novo assembly)
  type: boolean
  inputBinding:
    prefix: -r
- id: output_folder_default
  doc: 'output folder (default: assm).'
  type: boolean
  inputBinding:
    prefix: -o
- id: output_file_prefix
  doc: 'output file prefix (default: reads).'
  type: boolean
  inputBinding:
    prefix: -p
- id: number_minimap_threads
  doc: 'number of minimap and racon threads (default: 1).'
  type: boolean
  inputBinding:
    prefix: -t
- id: number_racon_rounds
  doc: 'number of racon rounds (default: 4).'
  type: boolean
  inputBinding:
    prefix: -m
- id: number_racon_shuffles
  doc: 'number of racon shuffles (default: 1. If not 1, should be >10).'
  type: boolean
  inputBinding:
    prefix: -n
- id: racon_window_length
  doc: 'racon window length (default: 500).'
  type: boolean
  inputBinding:
    prefix: -w
- id: keep_default_delete
  doc: 'keep intermediate files (default: delete).'
  type: boolean
  inputBinding:
    prefix: -k
- id: minimaps_k_option
  doc: "minimap's -K option (default: 500M)."
  type: boolean
  inputBinding:
    prefix: -K
- id: trim_adapters_reads
  doc: trim adapters from reads prior to everything else.
  type: boolean
  inputBinding:
    prefix: -c
- id: error_correct_e
  doc: error correct longest e% of reads prior to assembly, or an estimated coverage
    (e.g. 2x). For an estimated coverage, the -l option must be a fastx or a length
    (e.g. 4.8mb).
  type: boolean
  inputBinding:
    prefix: -e
- id: reference_length_number
  doc: Reference length, either as a number (e.g. 4.8mb) or fastx from which length
    will be calculated.
  type: boolean
  inputBinding:
    prefix: -l
- id: log_commands_running
  doc: log all commands before running.
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- mini_assemble
