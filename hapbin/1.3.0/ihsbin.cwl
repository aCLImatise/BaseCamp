class: CommandLineTool
id: ihsbin.cwl
inputs:
- id: hap
  doc: Hap file
  type: boolean
  inputBinding:
    prefix: --hap
- id: map
  doc: Map file
  type: boolean
  inputBinding:
    prefix: --map
- id: out
  doc: Output file
  type: boolean
  inputBinding:
    prefix: --out
- id: cut_off
  doc: 'EHH cutoff value (default: 0.05)'
  type: boolean
  inputBinding:
    prefix: --cutoff
- id: min_maf
  doc: 'Minimum allele frequency (default: 0.05)'
  type: boolean
  inputBinding:
    prefix: --minmaf
- id: scale
  doc: Gap scale parameter in bp, used to scale gaps > scale parameter as in Voight,
    et al.
  type: boolean
  inputBinding:
    prefix: --scale
- id: bin
  doc: 'Number of frequency bins for iHS normalization (default: 50)'
  type: boolean
  inputBinding:
    prefix: --bin
- id: max_extend
  doc: 'Maximum distance in bp to traverse when calculating EHH (default: 0 (disabled))'
  type: boolean
  inputBinding:
    prefix: --max-extend
- id: bin_om
  doc: Use binomial coefficients rather than frequency squared for EHH
  type: boolean
  inputBinding:
    prefix: --binom
outputs: []
cwlVersion: v1.1
baseCommand:
- ihsbin
