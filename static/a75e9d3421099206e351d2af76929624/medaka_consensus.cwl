class: CommandLineTool
id: medaka_consensus.cwl
inputs:
- id: bam
  doc: Input alignments.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output file.
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
  doc: 'Chunk length of samples. (default: 10000)'
  type: string
  inputBinding:
    prefix: --chunk_len
- id: chunk_ovlp
  doc: 'Overlap of chunks. (default: 1000)'
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
- id: tag_name
  doc: 'Two-letter tag name. (default: None)'
  type: string
  inputBinding:
    prefix: --tag_name
- id: tag_value
  doc: 'Value of tag. (default: None)'
  type: string
  inputBinding:
    prefix: --tag_value
- id: tag_keep_missing
  doc: 'Keep alignments when tag is missing. (default: False)'
  type: boolean
  inputBinding:
    prefix: --tag_keep_missing
- id: rg
  doc: 'Read group to select. (default: None)'
  type: string
  inputBinding:
    prefix: --RG
outputs: []
cwlVersion: v1.1
baseCommand:
- medaka
- consensus
