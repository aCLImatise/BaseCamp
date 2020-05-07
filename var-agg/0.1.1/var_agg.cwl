class: CommandLineTool
id: var_agg.cwl
inputs:
- id: verbose
  doc: Increase verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Decrease verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
- id: io_threads
  doc: 'Number of additional threads to use for (de)compression in I/O. [default:
    0]'
  type: string
  inputBinding:
    prefix: --io-threads
- id: output
  doc: <OUT.<vcf|bcf>>          Path to output VCF/BCF file to create. Will also write
    out a CSI/TBI index.
  type: boolean
  inputBinding:
    prefix: --output
- id: input_panel
  doc: '...    Path to panel file, format is "SAMPLE<tab>SUB- POPULATION<tab>POPULATION<ignored>"'
  type: string
  inputBinding:
    prefix: --input-panel
- id: input_ped
  doc: '...        Path to input PED file for FOUND_* INFO entries.'
  type: string
  inputBinding:
    prefix: --input-ped
- id: input_fast_a
  doc: '...       FAI-indexed reference FASTA file, only index will be accessed.'
  type: string
  inputBinding:
    prefix: --input-fasta
outputs: []
cwlVersion: v1.1
baseCommand:
- var-agg
