class: CommandLineTool
id: phyluce_assembly_assemblo_spades.cwl
inputs:
- id: in_output
  doc: The directory in which to store the assembly data
  type: Directory
  inputBinding:
    prefix: --output
- id: in_cores
  doc: The number of compute cores/threads to run with SPAdes
  type: long
  inputBinding:
    prefix: --cores
- id: in_subfolder
  doc: "A subdirectory, below the level of the group,\ncontaining the reads"
  type: string
  inputBinding:
    prefix: --subfolder
- id: in_verbosity
  doc: The logging level to use
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: The path to a directory to hold logs.
  type: File
  inputBinding:
    prefix: --log-path
- id: in_do_not_clean
  doc: Do not cleanup intermediate SPAdes files
  type: boolean
  inputBinding:
    prefix: --do-not-clean
- id: in_config
  doc: A configuration file containing reads to assemble
  type: File
  inputBinding:
    prefix: --config
- id: in_dir
  doc: A directory of reads to assemble
  type: Directory
  inputBinding:
    prefix: --dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_assemblo_spades
