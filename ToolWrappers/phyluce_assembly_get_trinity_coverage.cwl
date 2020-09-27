class: CommandLineTool
id: phyluce_assembly_get_trinity_coverage.cwl
inputs:
- id: in_assemblies
  doc: The directory containing the assemblies
  type: Directory
  inputBinding:
    prefix: --assemblies
- id: in_assemb_lo_config
  doc: The assemblo_trinity configuration file
  type: File
  inputBinding:
    prefix: --assemblo-config
- id: in_cores
  doc: The number of compute cores/threads to run with
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
- id: in_clean
  doc: Cleanup all intermediate Trinity files
  type: boolean
  inputBinding:
    prefix: --clean
- id: in_bwa_mem
  doc: Use bwa-mem instead of standard bwa
  type: boolean
  inputBinding:
    prefix: --bwa-mem
- id: in_assembler
  doc: Program used to asemble raw reads
  type: string
  inputBinding:
    prefix: --assembler
- id: in_trim
  doc: Trim contigs to a minimum coverage amount
  type: boolean
  inputBinding:
    prefix: --trim
- id: in_trinity
  doc: --subfolder SUBFOLDER
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_trinity_coverage
