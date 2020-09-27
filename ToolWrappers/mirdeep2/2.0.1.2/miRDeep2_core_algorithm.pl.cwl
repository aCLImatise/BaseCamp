class: CommandLineTool
id: miRDeep2_core_algorithm.pl.cwl
inputs:
- id: in_this_usage
  doc: this usage
  type: string
  inputBinding:
    prefix: -h
- id: in_file_known_mirnas
  doc: file with known miRNAs
  type: File
  inputBinding:
    prefix: -s
- id: in_filtered
  doc: filtered
  type: string
  inputBinding:
    prefix: -t
- id: in_output_only_ids
  doc: output (only ids)
  type: string
  inputBinding:
    prefix: -u
- id: in_default
  doc: (default 1)
  type: long
  inputBinding:
    prefix: -v
- id: in_option_sanger_sequences
  doc: option for Sanger sequences
  type: string
  inputBinding:
    prefix: -x
- id: in_with_randfold_pvalues
  doc: with randfold p-values
  type: File
  inputBinding:
    prefix: -y
- id: in_drosha_processing
  doc: Drosha processing
  type: string
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- miRDeep2_core_algorithm.pl
