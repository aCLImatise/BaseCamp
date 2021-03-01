class: CommandLineTool
id: preprocess_dataset.cwl
inputs:
- id: in_disable_filtering
  doc: skip the filtering step
  type: boolean?
  inputBinding:
    prefix: --disable_filtering
- id: in_disable_rna_shapes
  doc: skip secondary structure prediction with RNAshapes
  type: boolean?
  inputBinding:
    prefix: --disable_RNAshapes
- id: in_disable_rna_structure
  doc: skip secondary structure prediction with RNAstructures
  type: boolean?
  inputBinding:
    prefix: --disable_RNAstructure
- id: in_generate_negative
  doc: generate a negative set for classification
  type: boolean?
  inputBinding:
    prefix: --generate_negative
- id: in_min_score
  doc: "filtering: minimum score for binding site (default:\n0.0)"
  type: long?
  inputBinding:
    prefix: --min_score
- id: in_min_length
  doc: 'filtering: minimum binding site length (default: 8)'
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_max_length
  doc: 'filtering: maximum binding site length (default: 75)'
  type: long?
  inputBinding:
    prefix: --max_length
- id: in_elongation
  doc: "elongation: span for up- and downstream elongation of\nbinding sites (default:\
    \ 20)"
  type: long?
  inputBinding:
    prefix: --elongation
- id: in_genome_genes
  doc: 'negative set generation: gene boundaries'
  type: string?
  inputBinding:
    prefix: --genome_genes
- id: in_skip_check
  doc: skip check for installed prerequisites
  type: boolean?
  inputBinding:
    prefix: --skip_check
- id: in_working_dir
  doc: working/output directory
  type: string
  inputBinding:
    position: 0
- id: in_dataset_name
  doc: dataset name
  type: string
  inputBinding:
    position: 1
- id: in_input
  doc: input file in .bed format
  type: string
  inputBinding:
    position: 2
- id: in_genome
  doc: reference genome in FASTA format
  type: string
  inputBinding:
    position: 3
- id: in_genome_sizes
  doc: "chromosome sizes of reference genome (e.g. from http:/\n/hgdownload.soe.ucsc.edu/goldenPath/hg19/bigZips/hg19.\n\
    chrom.sizes)"
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- preprocess_dataset
