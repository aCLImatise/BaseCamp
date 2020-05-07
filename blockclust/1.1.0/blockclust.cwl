class: CommandLineTool
id: blockclust.py.cwl
inputs:
- id: mode
  doc: 'Mode of operationPRE = Preprocessing mode. convert from reads BAM to tags
    BED.ANALYSIS = Clustering and/or Classification mode.POST = Post processing such
    as plotting and annotation with known Rfam families etc. (default: ANALYSIS)'
  type: string
  inputBinding:
    prefix: --mode
- id: accept
  doc: 'Annotations of known ncRNAs in BED format (default: None)'
  type: string
  inputBinding:
    prefix: --accept
- id: reject
  doc: 'Annotations of other known transcripts (eg. protein coding) in BED format
    (default: None)'
  type: string
  inputBinding:
    prefix: --reject
- id: test_input
  doc: 'Output of preprocessing mode as input. (default: None)'
  type: string
  inputBinding:
    prefix: --test_input
- id: out
  doc: 'Output directory path for the whole analysis (default: None)'
  type: string
  inputBinding:
    prefix: --out
- id: config
  doc: 'blockClust configuration file. (default: /tmp/tmpiwzjk x5s/share/blockclust_data/blockclust.config)'
  type: string
  inputBinding:
    prefix: --config
- id: classify
  doc: 'Classify the input blockgroups (default: False)'
  type: boolean
  inputBinding:
    prefix: --classify
- id: cl_mode
  doc: 'Type of classificationMODEL = Model based classificationNEAREST= Nearest neighbour
    classification (default: MODEL)'
  type: string
  inputBinding:
    prefix: --clmode
- id: model_dir
  doc: 'Directory containing trained models for classification (default: /tmp/tmpiwzjkx5s/share/blockclust_data/models)'
  type: string
  inputBinding:
    prefix: --model_dir
- id: cm_search_out
  doc: 'Output of cmsearch tool (default: None)'
  type: string
  inputBinding:
    prefix: --cmsearch_out
- id: clust_bed
  doc: 'BED file containing clusters from ANALYSIS mode (default: None)'
  type: string
  inputBinding:
    prefix: --clust_bed
- id: bam
  doc: 'Input bam file (default: None)'
  type: string
  inputBinding:
    prefix: --bam
- id: tags_bed
  doc: 'BED file of tags (default: None)'
  type: string
  inputBinding:
    prefix: --tags_bed
- id: sim_tab
  doc: 'Tabular file of pairwise blockgroup similarities (default: None)'
  type: string
  inputBinding:
    prefix: --sim_tab
- id: rf_am_map
  doc: 'Mapping of Rfam families (default: /tmp/tmpiwzjkx5s/share/blockclust_data/rfam_map.txt)'
  type: string
  inputBinding:
    prefix: --rfam_map
- id: no_chr
  doc: "Input blockgroups do not contain 'chr' in the begining of chromosome ids (for\
    \ eg. Ensembl database do not use 'chr'). (default: False)"
  type: boolean
  inputBinding:
    prefix: --no_chr
outputs: []
cwlVersion: v1.1
baseCommand:
- blockclust.py
