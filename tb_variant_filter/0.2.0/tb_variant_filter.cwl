class: CommandLineTool
id: tb_variant_filter.cwl
inputs:
- id: input_file
  doc: VCF input file (relative to H37Rv)
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: Output file (VCF format)
  type: string
  inputBinding:
    position: 1
- id: close_to_in_del_filter
  doc: Mask out single nucleotide variants that are too close to indels
  type: boolean
  inputBinding:
    prefix: --close_to_indel_filter
- id: in_del_window_size
  doc: Window around indel to mask out (mask this number of bases upstream/downstream
    from the indel. Requires -I option to selected)
  type: string
  inputBinding:
    prefix: --indel_window_size
- id: min_percentage_alt_filter
  doc: Mask out variants with less than a given percentage variant allele at this
    site
  type: boolean
  inputBinding:
    prefix: --min_percentage_alt_filter
- id: min_percentage_alt
  doc: Variants with less than this percentage variants at a site will be masked out
  type: long
  inputBinding:
    prefix: --min_percentage_alt
- id: min_depth_filter
  doc: Mask out variants with less than a given depth of reads
  type: boolean
  inputBinding:
    prefix: --min_depth_filter
- id: min_depth
  doc: Variants at sites with less than this depth of reads will be masked out
  type: long
  inputBinding:
    prefix: --min_depth
- id: snv_only_filter
  doc: Mask out variants that are not SNVs
  type: boolean
  inputBinding:
    prefix: --snv_only_filter
outputs: []
cwlVersion: v1.1
baseCommand:
- tb_variant_filter
