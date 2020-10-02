class: CommandLineTool
id: medaka_features.cwl
inputs:
- id: in_debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_batch_size
  doc: 'Inference batch size. (default: 100)'
  type: long
  inputBinding:
    prefix: --batch_size
- id: in_regions
  doc: "Genomic regions to analyse, or a bed file. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --regions
- id: in_chunk_len
  doc: 'Chunk length of samples. (default: 10000)'
  type: long
  inputBinding:
    prefix: --chunk_len
- id: in_chunk_ovlp
  doc: 'Overlap of chunks. (default: 1000)'
  type: long
  inputBinding:
    prefix: --chunk_ovlp
- id: in_truth
  doc: "Bam of truth aligned to ref to create features for\ntraining. (default: None)"
  type: string
  inputBinding:
    prefix: --truth
- id: in_truth_haplo_tag
  doc: "Two-letter tag defining haplotype of alignments for\npolyploidy labels. (default:\
    \ None)"
  type: string
  inputBinding:
    prefix: --truth_haplotag
- id: in_threads
  doc: 'Number of threads for parallel execution. (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_label_scheme
  doc: 'Labelling scheme. (default: HaploidLabelScheme)'
  type: string
  inputBinding:
    prefix: --label_scheme
- id: in_label_scheme_args
  doc: "=VAL1 KEY2=VAL2a,VAL2b... [KEY1=VAL1 KEY2=VAL2a,VAL2b... ...]\nLabel scheme\
    \ key-word arguments. (default: {})"
  type: long
  inputBinding:
    prefix: --label_scheme_args
- id: in_feature_encoder
  doc: "FeatureEncoder used to create the features. (default:\nCountsFeatureEncoder)"
  type: string
  inputBinding:
    prefix: --feature_encoder
- id: in_feature_encoder_args
  doc: "=VAL1 KEY2=VAL2a,VAL2b... [KEY1=VAL1 KEY2=VAL2a,VAL2b... ...]\nFeature encoder\
    \ key-word arguments. (default: {})\n"
  type: long
  inputBinding:
    prefix: --feature_encoder_args
- id: in_bam
  doc: Input alignments.
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output features file.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- medaka
- features
