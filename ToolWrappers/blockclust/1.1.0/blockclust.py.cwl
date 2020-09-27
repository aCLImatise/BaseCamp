class: CommandLineTool
id: blockclust.py.cwl
inputs:
- id: in_mode
  doc: "Mode of operationPRE = Preprocessing mode. convert\nfrom reads BAM to tags\
    \ BED.ANALYSIS = Clustering\nand/or Classification mode.POST = Post processing\
    \ such\nas plotting and annotation with known Rfam families\netc. (default: ANALYSIS)"
  type: string
  inputBinding:
    prefix: --mode
- id: in_accept
  doc: "Annotations of known ncRNAs in BED format (default:\nNone)"
  type: string
  inputBinding:
    prefix: --accept
- id: in_reject
  doc: "Annotations of other known transcripts (eg. protein\ncoding) in BED format\
    \ (default: None)"
  type: string
  inputBinding:
    prefix: --reject
- id: in_test_input
  doc: 'Output of preprocessing mode as input. (default: None)'
  type: string
  inputBinding:
    prefix: --test_input
- id: in_out
  doc: "Output directory path for the whole analysis (default:\nNone)"
  type: File
  inputBinding:
    prefix: --out
- id: in_config
  doc: "blockClust configuration file. (default:\n/usr/local/share/blockclust_data/blockclust.config)"
  type: File
  inputBinding:
    prefix: --config
- id: in_classify
  doc: 'Classify the input blockgroups (default: False)'
  type: boolean
  inputBinding:
    prefix: --classify
- id: in_cl_mode
  doc: "Type of classificationMODEL = Model based\nclassificationNEAREST= Nearest\
    \ neighbour\nclassification (default: MODEL)"
  type: string
  inputBinding:
    prefix: --clmode
- id: in_model_dir
  doc: "Directory containing trained models for classification\n(default: /usr/local/share/blockclust_data/models)"
  type: Directory
  inputBinding:
    prefix: --model_dir
- id: in_cm_search_out
  doc: 'Output of cmsearch tool (default: None)'
  type: string
  inputBinding:
    prefix: --cmsearch_out
- id: in_clust_bed
  doc: "BED file containing clusters from ANALYSIS mode\n(default: None)"
  type: File
  inputBinding:
    prefix: --clust_bed
- id: in_bam
  doc: 'Input bam file (default: None)'
  type: File
  inputBinding:
    prefix: --bam
- id: in_tags_bed
  doc: 'BED file of tags (default: None)'
  type: File
  inputBinding:
    prefix: --tags_bed
- id: in_sim_tab
  doc: "Tabular file of pairwise blockgroup similarities\n(default: None)"
  type: File
  inputBinding:
    prefix: --sim_tab
- id: in_rf_am_map
  doc: "Mapping of Rfam families (default:\n/usr/local/share/blockclust_data/rfam_map.txt)"
  type: string
  inputBinding:
    prefix: --rfam_map
- id: in_no_chr
  doc: "Input blockgroups do not contain 'chr' in the begining\nof chromosome ids\
    \ (for eg. Ensembl database do not use\n'chr'). (default: False)"
  type: boolean
  inputBinding:
    prefix: --no_chr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output directory path for the whole analysis (default:\nNone)"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- blockclust.py
