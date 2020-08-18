class: CommandLineTool
id: ../../../medaka_tools_get_alignment_params.cwl
inputs:
- id: model
  doc: 'Model to use. {r103_min_high_g345, r103_min_high_g360, r103_prom_high_g360,
    r103_prom_snp_g3210, r103_prom_variant_g3210, r10_min_high_g303, r10_min_high_g340,
    r941_min_fast_g303, r941_min_high_g303, r941_min_high_g330, r941_min_high_g340_rle,
    r941_min_high_g344, r941_min_high_g351, r941_min_high_g360, r941_prom_fast_g303,
    r941_prom_high_g303, r941_prom_high_g330, r941_prom_high_g344, r941_prom_high_g360,
    r941_prom_snp_g303, r941_prom_snp_g322, r941_prom_snp_g360, r941_prom_variant_g303,
    r941_prom_variant_g322, r941_prom_variant_g360} (default: r941_min_high_g360)'
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
- get_alignment_params
