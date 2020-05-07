class: CommandLineTool
id: medaka_consensus_from_features.cwl
inputs:
- id: features
  doc: Pregenerated features (from medaka features).
  type: string
  inputBinding:
    position: 0
- id: debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: model
  doc: 'Model definition. {r941_min_high_g330, r941_min_high_g344, r941_min_high_g351,
    r941_prom_high_g330, r941_prom_high_g344, r941_prom_high_g351, r941_min_high_g340_rle,
    r103_min_high_g345, r941_prom_snp_g322, r941_prom_variant_g322, r103_prom_snp_g3210,
    r103_prom_variant_g3210} (default: r941_min_high_g351)'
  type: string
  inputBinding:
    prefix: --model
outputs: []
cwlVersion: v1.1
baseCommand:
- medaka
- consensus_from_features
