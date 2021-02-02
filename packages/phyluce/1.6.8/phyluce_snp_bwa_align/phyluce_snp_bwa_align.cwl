class: CommandLineTool
id: phyluce_snp_bwa_align.cwl
inputs:
- id: in_config
  doc: A configuration file containing
  type: File
  inputBinding:
    prefix: --config
- id: in_output
  doc: The directory in which to store the SNPs files
  type: Directory
  inputBinding:
    prefix: --output
- id: in_subfolder
  doc: "A subdirectory, below the level of the group,\ncontaining the reads"
  type: string
  inputBinding:
    prefix: --subfolder
- id: in_cores
  doc: The number of compute cores/threads to use
  type: long
  inputBinding:
    prefix: --cores
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
- id: in_no_remove_duplicates
  doc: Do not remove duplicate reads.
  type: boolean
  inputBinding:
    prefix: --no-remove-duplicates
- id: in_mem
  doc: Use bwa mem.
  type: boolean
  inputBinding:
    prefix: --mem
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_snp_bwa_align
