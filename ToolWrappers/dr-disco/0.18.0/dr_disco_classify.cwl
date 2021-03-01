class: CommandLineTool
id: dr_disco_classify.cwl
inputs:
- id: in_only_valid
  doc: Only return results marked as 'valid'
  type: boolean?
  inputBinding:
    prefix: --only-valid
- id: in_blacklist_regions
  doc: Blacklist these regions (BED file)
  type: File?
  inputBinding:
    prefix: --blacklist-regions
- id: in_blacklist_junctions
  doc: "Blacklist these region-to-region junctions\n(custom format, see files in ./share/)"
  type: string?
  inputBinding:
    prefix: --blacklist-junctions
- id: in_min_chim_overhang
  doc: "Minimum alignment length on each side of the\njunction. May need to be set\
    \ to smaller values\nfor read lengths smaller than 75bp. Larger\nvalues are more\
    \ stringent. [default=50]"
  type: long?
  inputBinding:
    prefix: --min-chim-overhang
- id: in_ff_pe
  doc: "Lowers the threshold for the relative amount of\nmismatches, as often found\
    \ in FFPE material.\nNote that enabling this option will\nconsequently result\
    \ in more false positives."
  type: boolean?
  inputBinding:
    prefix: --ffpe
- id: in_table_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_table_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dr-disco
- classify
