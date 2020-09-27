class: CommandLineTool
id: biopet_extractadaptersfastqc.cwl
inputs:
- id: in_log_level
  doc: "Level of log information printed. Possible levels: 'debug', 'info', 'warn',\
    \ 'error'"
  type: string
  inputBinding:
    prefix: --log_level
- id: in_input_file
  doc: Fastqc data file (i.e., fastqc_data.txt file in the FastQC output)
  type: File
  inputBinding:
    prefix: --inputFile
- id: in_adapter_output_file
  doc: Output file for adapters, if not supplied output will go to stdout
  type: File
  inputBinding:
    prefix: --adapterOutputFile
- id: in_contam_soutputfile
  doc: Output file for adapters, if not supplied output will go to stdout
  type: File
  inputBinding:
    prefix: --contamsOutputFile
- id: in_skip_contam_s
  doc: If this is set only the adapters block is used, other wise contaminations is
    also used
  type: boolean
  inputBinding:
    prefix: --skipContams
- id: in_known_contam_file
  doc: This file should contain the known contaminations from fastqc
  type: File
  inputBinding:
    prefix: --knownContamFile
- id: in_known_adapter_file
  doc: This file should contain the known adapters from fastqc
  type: File
  inputBinding:
    prefix: --knownAdapterFile
- id: in_adapter_cut_off
  doc: The fraction of the adapters in a read should be above this fraction, default
    is 0.001
  type: double
  inputBinding:
    prefix: --adapterCutoff
- id: in_output_as_fast_a
  doc: Output in fasta format, default only sequences
  type: boolean
  inputBinding:
    prefix: --outputAsFasta
- id: in_extract_adapters_fast_qc
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input_file
  doc: Fastqc data file (i.e., fastqc_data.txt file in the FastQC output)
  type: File
  outputBinding:
    glob: $(inputs.in_input_file)
- id: out_adapter_output_file
  doc: Output file for adapters, if not supplied output will go to stdout
  type: File
  outputBinding:
    glob: $(inputs.in_adapter_output_file)
- id: out_contam_soutputfile
  doc: Output file for adapters, if not supplied output will go to stdout
  type: File
  outputBinding:
    glob: $(inputs.in_contam_soutputfile)
cwlVersion: v1.1
baseCommand:
- biopet-extractadaptersfastqc
