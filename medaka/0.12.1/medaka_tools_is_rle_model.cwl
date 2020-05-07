class: CommandLineTool
id: medaka_tools_is_rle_model.cwl
inputs:
- id: model
  doc: 'Model definition, default is equivalent to r941_min_high_g351. {r941_min_high_g330,
    r941_min_high_g344, r941_min_high_g351, r941_prom_high_g330, r941_prom_high_g344,
    r941_prom_high_g351, r941_min_high_g340_rle, r103_min_high_g345, r941_prom_snp_g322,
    r941_prom_variant_g322, r103_prom_snp_g3210, r103_prom_variant_g3210} (default:
    /tmp/tmp9hrxhmvc/lib/python3.6/site- packages/medaka/data/r941_min_high_g351_model.hdf5)'
  type: string
  inputBinding:
    prefix: --model
- id: disable_cu_dnn
  doc: 'Disable use of cuDNN model layers. (default: False)'
  type: boolean
  inputBinding:
    prefix: --disable_cudnn
outputs: []
cwlVersion: v1.1
baseCommand:
- medaka
- tools
- is_rle_model
