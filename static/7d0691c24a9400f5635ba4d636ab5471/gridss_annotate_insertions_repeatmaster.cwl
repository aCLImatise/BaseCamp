class: CommandLineTool
id: gridss_annotate_insertions_repeatmaster.cwl
inputs:
- id: opts
  doc: RDS file containing argument values
  type: boolean
  inputBinding:
    prefix: --opts
- id: input
  doc: Input GRIDSS VCF
  type: boolean
  inputBinding:
    prefix: --input
- id: output
  doc: Output GRIDSS VCF
  type: boolean
  inputBinding:
    prefix: --output
- id: repeatmasker
  doc: RepeatMasker .fa.out file
  type: boolean
  inputBinding:
    prefix: --repeatmasker
- id: script_dir
  doc: 'Path to libgridss.R script [default: ./]'
  type: boolean
  inputBinding:
    prefix: --scriptdir
outputs: []
cwlVersion: v1.1
baseCommand:
- gridss_annotate_insertions_repeatmaster
