class: CommandLineTool
id: phyluce_genetrees_locus_stats.cwl
inputs:
- id: in_config
  doc: The gene tree configuration file
  type: File
  inputBinding:
    prefix: --config
- id: in_alignment_files_process
  doc: Alignment files to process
  type: string
  inputBinding:
    prefix: --alignments
- id: in_input_format
  doc: The input alignment format.
  type: string
  inputBinding:
    prefix: --input-format
- id: in_verbosity
  doc: The logging level to use.
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
- id: in_cores
  doc: "Process alignments in parallel using --cores for\nalignment. This is the number\
    \ of PHYSICAL CPUs.\n"
  type: long
  inputBinding:
    prefix: --cores
- id: in_var_6
  doc: '[--input-format {fasta,nexus,phylip,clustal,emboss,stockholm}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_locus_stats
