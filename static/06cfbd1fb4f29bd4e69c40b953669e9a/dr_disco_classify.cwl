class: CommandLineTool
id: dr_disco_classify.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: table_input_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: table_output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: only_valid
  doc: Only return results marked as 'valid'
  type: boolean
  inputBinding:
    prefix: --only-valid
- id: blacklist_regions
  doc: Blacklist these regions (BED file)
  type: string
  inputBinding:
    prefix: --blacklist-regions
- id: blacklist_junctions
  doc: Blacklist these region-to-region junctions (custom format, see files in ./share/)
  type: string
  inputBinding:
    prefix: --blacklist-junctions
- id: min_chim_overhang
  doc: Minimum alignment length on each side of the junction. May need to be set to
    smaller values for read lengths smaller than 75bp. Larger values are more stringent.
    [default=50]
  type: long
  inputBinding:
    prefix: --min-chim-overhang
- id: ff_pe
  doc: Lowers the threshold for the relative amount of mismatches, as often found
    in FFPE material. Note that enabling this option will consequently result in more
    false positives.
  type: boolean
  inputBinding:
    prefix: --ffpe
outputs: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- classify
