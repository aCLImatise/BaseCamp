class: CommandLineTool
id: ../../../tb_variant_filter.cwl
inputs:
- id: in_region_filter
  doc: ''
  type: string
  inputBinding:
    prefix: --region_filter
- id: in_close_to_in_del_filter
  doc: "Mask out single nucleotide variants that are too close\nto indels"
  type: boolean
  inputBinding:
    prefix: --close_to_indel_filter
- id: in_in_del_window_size
  doc: "Window around indel to mask out (mask this number of\nbases upstream/downstream\
    \ from the indel. Requires -I\noption to selected)"
  type: long
  inputBinding:
    prefix: --indel_window_size
- id: in_min_percentage_alt_filter
  doc: "Mask out variants with less than a given percentage\nvariant allele at this\
    \ site"
  type: boolean
  inputBinding:
    prefix: --min_percentage_alt_filter
- id: in_min_percentage_alt
  doc: "Variants with less than this percentage variants at a\nsite will be masked\
    \ out"
  type: long
  inputBinding:
    prefix: --min_percentage_alt
- id: in_min_depth_filter
  doc: "Mask out variants with less than a given depth of\nreads"
  type: boolean
  inputBinding:
    prefix: --min_depth_filter
- id: in_min_depth
  doc: "Variants at sites with less than this depth of reads\nwill be masked out"
  type: long
  inputBinding:
    prefix: --min_depth
- id: in_snv_only_filter
  doc: Mask out variants that are not SNVs
  type: boolean
  inputBinding:
    prefix: --snv_only_filter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tb_variant_filter
