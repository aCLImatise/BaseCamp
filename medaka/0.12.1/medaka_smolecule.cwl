class: CommandLineTool
id: medaka_smolecule.cwl
inputs:
- id: fast_a
  doc: Single-molecule reads, one file per read.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output directory.
  type: string
  inputBinding:
    position: 1
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
- id: batch_size
  doc: 'Inference batch size. (default: 100)'
  type: string
  inputBinding:
    prefix: --batch_size
- id: regions
  doc: 'Genomic regions to analyse, or a bed file. (default: None)'
  type: string[]
  inputBinding:
    prefix: --regions
- id: chunk_len
  doc: 'Chunk length of samples. (default: 1000)'
  type: string
  inputBinding:
    prefix: --chunk_len
- id: chunk_ovlp
  doc: 'Overlap of chunks. (default: 500)'
  type: string
  inputBinding:
    prefix: --chunk_ovlp
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
- id: depth
  doc: 'Minimum subread count. (default: 3)'
  type: string
  inputBinding:
    prefix: --depth
- id: length
  doc: 'Minimum median subread length. (default: 400)'
  type: long
  inputBinding:
    prefix: --length
- id: threads
  doc: 'Number of threads used by inference. (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: check_output
  doc: 'Verify integrity of output file after inference. (default: False)'
  type: boolean
  inputBinding:
    prefix: --check_output
- id: save_features
  doc: 'Save features with consensus probabilities. (default: False)'
  type: boolean
  inputBinding:
    prefix: --save_features
outputs: []
cwlVersion: v1.1
baseCommand:
- medaka
- smolecule
