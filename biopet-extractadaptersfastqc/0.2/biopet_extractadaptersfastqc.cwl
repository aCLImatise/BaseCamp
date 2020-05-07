class: CommandLineTool
id: biopet_extractadaptersfastqc.cwl
inputs:
- id: log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string
  inputBinding:
    prefix: --log_level
- id: input_file
  doc: Fastqc data file (i.e., fastqc_data.txt file in the FastQC output)
  type: string
  inputBinding:
    prefix: --inputFile
- id: adapter_output_file
  doc: Output file for adapters, if not supplied output will go to stdout
  type: string
  inputBinding:
    prefix: --adapterOutputFile
- id: contam_soutputfile
  doc: Output file for adapters, if not supplied output will go to stdout
  type: string
  inputBinding:
    prefix: --contamsOutputFile
- id: skip_contam_s
  doc: If this is set only the adapters block is used, other wise contaminations is
    also used
  type: boolean
  inputBinding:
    prefix: --skipContams
- id: known_contam_file
  doc: This file should contain the known contaminations from fastqc
  type: string
  inputBinding:
    prefix: --knownContamFile
- id: known_adapter_file
  doc: This file should contain the known adapters from fastqc
  type: string
  inputBinding:
    prefix: --knownAdapterFile
- id: adapter_cut_off
  doc: The fraction of the adapters in a read should be above this fraction, default
    is 0.001
  type: string
  inputBinding:
    prefix: --adapterCutoff
- id: output_as_fast_a
  doc: Output in fasta format, default only sequences
  type: boolean
  inputBinding:
    prefix: --outputAsFasta
outputs: []
cwlVersion: v1.1
baseCommand:
- biopet-extractadaptersfastqc
