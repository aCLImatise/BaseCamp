class: CommandLineTool
id: var_agg.cwl
inputs:
- id: in_verbose
  doc: Increase verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Decrease verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_io_threads
  doc: 'Number of additional threads to use for (de)compression in I/O. [default:
    0]'
  type: long
  inputBinding:
    prefix: --io-threads
- id: in_output
  doc: <OUT.<vcf|bcf>>          Path to output VCF/BCF file to create. Will also write
    out a CSI/TBI index.
  type: File
  inputBinding:
    prefix: --output
- id: in_input_panel
  doc: "...    Path to panel file, format is \"SAMPLE<tab>SUB-\nPOPULATION<tab>POPULATION<ignored>\""
  type: File
  inputBinding:
    prefix: --input-panel
- id: in_input_ped
  doc: '...        Path to input PED file for FOUND_* INFO entries.'
  type: File
  inputBinding:
    prefix: --input-ped
- id: in_input_fast_a
  doc: '...       FAI-indexed reference FASTA file, only index will be accessed.'
  type: File
  inputBinding:
    prefix: --input-fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: <OUT.<vcf|bcf>>          Path to output VCF/BCF file to create. Will also write
    out a CSI/TBI index.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- var-agg
