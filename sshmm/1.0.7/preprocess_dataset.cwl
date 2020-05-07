class: CommandLineTool
id: preprocess_dataset.cwl
inputs:
- id: working_dir
  doc: working/output directory
  type: string
  inputBinding:
    position: 0
- id: dataset_name
  doc: dataset name
  type: string
  inputBinding:
    position: 1
- id: input
  doc: input file in .bed format
  type: string
  inputBinding:
    position: 2
- id: genome
  doc: reference genome in FASTA format
  type: string
  inputBinding:
    position: 3
- id: genome_sizes
  doc: chromosome sizes of reference genome (e.g. from http:/ /hgdownload.soe.ucsc.edu/goldenPath/hg19/bigZips/hg19.
    chrom.sizes)
  type: string
  inputBinding:
    position: 4
- id: disable_filtering
  doc: skip the filtering step
  type: boolean
  inputBinding:
    prefix: --disable_filtering
- id: disable_rna_shapes
  doc: skip secondary structure prediction with RNAshapes
  type: boolean
  inputBinding:
    prefix: --disable_RNAshapes
- id: disable_rna_structure
  doc: skip secondary structure prediction with RNAstructures
  type: boolean
  inputBinding:
    prefix: --disable_RNAstructure
- id: generate_negative
  doc: generate a negative set for classification
  type: boolean
  inputBinding:
    prefix: --generate_negative
- id: min_score
  doc: 'filtering: minimum score for binding site (default: 0.0)'
  type: long
  inputBinding:
    prefix: --min_score
- id: min_length
  doc: 'filtering: minimum binding site length (default: 8)'
  type: long
  inputBinding:
    prefix: --min_length
- id: max_length
  doc: 'filtering: maximum binding site length (default: 75)'
  type: long
  inputBinding:
    prefix: --max_length
- id: elongation
  doc: 'elongation: span for up- and downstream elongation of binding sites (default:
    20)'
  type: string
  inputBinding:
    prefix: --elongation
- id: genome_genes
  doc: 'negative set generation: gene boundaries'
  type: string
  inputBinding:
    prefix: --genome_genes
- id: skip_check
  doc: skip check for installed prerequisites
  type: boolean
  inputBinding:
    prefix: --skip_check
outputs: []
cwlVersion: v1.1
baseCommand:
- preprocess_dataset
