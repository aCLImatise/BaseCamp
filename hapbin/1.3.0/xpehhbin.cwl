class: CommandLineTool
id: xpehhbin.cwl
inputs:
- id: hapa
  doc: Hap file for population A
  type: boolean
  inputBinding:
    prefix: --hapA
- id: hap_b
  doc: Hap file for population B
  type: boolean
  inputBinding:
    prefix: --hapB
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
- id: bin_om
  doc: Use binomial coefficients rather than frequency squared for EHH
  type: boolean
  inputBinding:
    prefix: --binom
- id: max_extend
  doc: 'Maximum distance in bp to traverse when calculating EHH (default: 0 (disabled))'
  type: boolean
  inputBinding:
    prefix: --max-extend
outputs: []
cwlVersion: v1.1
baseCommand:
- xpehhbin
