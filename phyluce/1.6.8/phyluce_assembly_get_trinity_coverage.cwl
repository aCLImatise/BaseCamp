class: CommandLineTool
id: phyluce_assembly_get_trinity_coverage.cwl
inputs:
- id: assemblies
  doc: The directory containing the assemblies
  type: string
  inputBinding:
    prefix: --assemblies
- id: assemb_lo_config
  doc: The assemblo_trinity configuration file
  type: string
  inputBinding:
    prefix: --assemblo-config
- id: cores
  doc: The number of compute cores/threads to run with Trinity
  type: string
  inputBinding:
    prefix: --cores
- id: subfolder
  doc: A subdirectory, below the level of the group, containing the reads
  type: string
  inputBinding:
    prefix: --subfolder
- id: verbosity
  doc: The logging level to use
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: The path to a directory to hold logs.
  type: string
  inputBinding:
    prefix: --log-path
- id: clean
  doc: Cleanup all intermediate Trinity files
  type: boolean
  inputBinding:
    prefix: --clean
- id: bwa_mem
  doc: Use bwa-mem instead of standard bwa
  type: boolean
  inputBinding:
    prefix: --bwa-mem
- id: assembler
  doc: Program used to asemble raw reads
  type: string
  inputBinding:
    prefix: --assembler
- id: trim
  doc: Trim contigs to a minimum coverage amount
  type: boolean
  inputBinding:
    prefix: --trim
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_assembly_get_trinity_coverage
