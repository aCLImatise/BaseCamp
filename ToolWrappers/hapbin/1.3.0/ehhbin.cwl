class: CommandLineTool
id: ../../../ehhbin.cwl
inputs:
- id: in_hap
  doc: Hap file
  type: boolean
  inputBinding:
    prefix: --hap
- id: in_map
  doc: Map file
  type: boolean
  inputBinding:
    prefix: --map
- id: in_locus
  doc: Locus
  type: boolean
  inputBinding:
    prefix: --locus
- id: in_cut_off
  doc: 'EHH cutoff value (default: 0.05)'
  type: boolean
  inputBinding:
    prefix: --cutoff
- id: in_min_maf
  doc: 'Minimum allele frequency (default: 0.05)'
  type: boolean
  inputBinding:
    prefix: --minmaf
- id: in_scale
  doc: Gap scale parameter in bp, used to scale gaps > scale parameter as in Voight,
    et al.
  type: boolean
  inputBinding:
    prefix: --scale
- id: in_max_extend
  doc: 'Maximum distance in bp to traverse when calculating EHH (default: 0 (disabled))'
  type: boolean
  inputBinding:
    prefix: --max-extend
- id: in_bin_om
  doc: Use binomial coefficients rather than frequency squared for EHH
  type: boolean
  inputBinding:
    prefix: --binom
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ehhbin
