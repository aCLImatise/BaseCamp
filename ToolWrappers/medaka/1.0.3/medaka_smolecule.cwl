class: CommandLineTool
id: medaka_smolecule.cwl
inputs:
- id: in_debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_batch_size
  doc: 'Inference batch size. (default: 100)'
  type: long?
  inputBinding:
    prefix: --batch_size
- id: in_regions
  doc: "Genomic regions to analyse, or a bed file. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --regions
- id: in_chunk_len
  doc: 'Chunk length of samples. (default: 1000)'
  type: long?
  inputBinding:
    prefix: --chunk_len
- id: in_chunk_ovlp
  doc: 'Overlap of chunks. (default: 500)'
  type: long?
  inputBinding:
    prefix: --chunk_ovlp
- id: in_model
  doc: "Model to use. {r103_min_high_g345, r103_min_high_g360,\nr103_prom_high_g360,\
    \ r103_prom_snp_g3210,\nr103_prom_variant_g3210, r10_min_high_g303,\nr10_min_high_g340,\
    \ r941_min_fast_g303,\nr941_min_high_g303, r941_min_high_g330,\nr941_min_high_g340_rle,\
    \ r941_min_high_g344,\nr941_min_high_g351, r941_min_high_g360,\nr941_prom_fast_g303,\
    \ r941_prom_high_g303,\nr941_prom_high_g330, r941_prom_high_g344,\nr941_prom_high_g360,\
    \ r941_prom_snp_g303,\nr941_prom_snp_g322, r941_prom_snp_g360,\nr941_prom_variant_g303,\
    \ r941_prom_variant_g322,\nr941_prom_variant_g360} (default: r941_min_high_g360)"
  type: long?
  inputBinding:
    prefix: --model
- id: in_disable_cu_dnn
  doc: 'Disable use of cuDNN model layers. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disable_cudnn
- id: in_depth
  doc: 'Minimum subread count. (default: 3)'
  type: long?
  inputBinding:
    prefix: --depth
- id: in_length
  doc: 'Minimum median subread length. (default: 400)'
  type: long?
  inputBinding:
    prefix: --length
- id: in_threads
  doc: 'Number of threads used by inference. (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_check_output
  doc: "Verify integrity of output file after inference.\n(default: False)"
  type: File?
  inputBinding:
    prefix: --check_output
- id: in_save_features
  doc: "Save features with consensus probabilities. (default:\nFalse)\n"
  type: boolean?
  inputBinding:
    prefix: --save_features
- id: in_fast_a
  doc: Single-molecule reads, one file per read.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output directory.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_check_output
  doc: "Verify integrity of output file after inference.\n(default: False)"
  type: File?
  outputBinding:
    glob: $(inputs.in_check_output)
hints: []
cwlVersion: v1.1
baseCommand:
- medaka
- smolecule
