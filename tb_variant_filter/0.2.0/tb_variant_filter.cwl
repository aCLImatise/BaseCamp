#!/usr/bin/env cwl-runner

baseCommand:
- tb_variant_filter
class: CommandLineTool
cwlVersion: v1.0
id: tb_variant_filter
inputs:
- doc: VCF input file (relative to H37Rv)
  id: input_file
  inputBinding:
    position: 0
  type: string
- doc: Output file (VCF format)
  id: output_file
  inputBinding:
    position: 1
  type: string
- doc: Mask out single nucleotide variants that are too close to indels
  id: close_to_in_del_filter
  inputBinding:
    prefix: --close_to_indel_filter
  type: boolean
- doc: Window around indel to mask out (mask this number of bases upstream/downstream
    from the indel. Requires -I option to selected)
  id: in_del_window_size
  inputBinding:
    prefix: --indel_window_size
  type: string
- doc: Mask out variants with less than a given percentage variant allele at this
    site
  id: min_percentage_alt_filter
  inputBinding:
    prefix: --min_percentage_alt_filter
  type: boolean
- doc: Variants with less than this percentage variants at a site will be masked out
  id: min_percentage_alt
  inputBinding:
    prefix: --min_percentage_alt
  type: long
- doc: Mask out variants with less than a given depth of reads
  id: min_depth_filter
  inputBinding:
    prefix: --min_depth_filter
  type: boolean
- doc: Variants at sites with less than this depth of reads will be masked out
  id: min_depth
  inputBinding:
    prefix: --min_depth
  type: long
- doc: Mask out variants that are not SNVs
  id: snv_only_filter
  inputBinding:
    prefix: --snv_only_filter
  type: boolean
