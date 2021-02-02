class: CommandLineTool
id: deepbgc_pipeline.cwl
inputs:
- id: in_detector
  doc: Trained detection model name (run "deepbgc download" to download models) or
    path to trained model pickle file. Can be provided multiple times (-d first -d
    second)
  type: File
  inputBinding:
    prefix: --detector
- id: in_no_detector
  doc: Disable BGC detection
  type: boolean
  inputBinding:
    prefix: --no-detector
- id: in_label
  doc: Label for detected clusters (equal to --detector by default). If multiple detectors
    are provided, a label should be provided for each one
  type: string
  inputBinding:
    prefix: --label
- id: in_score
  doc: 'Average protein-wise DeepBGC score threshold for extracting BGC regions from
    Pfam sequences (default: 0.5)'
  type: double
  inputBinding:
    prefix: --score
- id: in_merge_max_protein_gap
  doc: 'Merge detected BGCs within given number of proteins (default: 0)'
  type: long
  inputBinding:
    prefix: --merge-max-protein-gap
- id: in_merge_max_nucl_gap
  doc: 'Merge detected BGCs within given number of nucleotides (default: 0)'
  type: long
  inputBinding:
    prefix: --merge-max-nucl-gap
- id: in_min_nucl
  doc: 'Minimum BGC nucleotide length (default: 1)'
  type: long
  inputBinding:
    prefix: --min-nucl
- id: in_min_proteins
  doc: 'Minimum number of proteins in a BGC (default: 1)'
  type: long
  inputBinding:
    prefix: --min-proteins
- id: in_min_domains
  doc: 'Minimum number of protein domains in a BGC (default: 1)'
  type: long
  inputBinding:
    prefix: --min-domains
- id: in_min_bio_domains
  doc: 'Minimum number of known biosynthetic (as defined by antiSMASH) protein domains
    in a BGC (default: 0)'
  type: long
  inputBinding:
    prefix: --min-bio-domains
- id: in_classifier
  doc: Trained classification model name (run "deepbgc download" to download models)
    or path to trained model pickle file. Can be provided multiple times (-c first
    -c second)
  type: File
  inputBinding:
    prefix: --classifier
- id: in_no_classifier
  doc: Disable BGC classification
  type: boolean
  inputBinding:
    prefix: --no-classifier
- id: in_classifier_score
  doc: "DeepBGC classification score threshold for assigning classes to BGCs (default:\
    \ 0.5)\n"
  type: double
  inputBinding:
    prefix: --classifier-score
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_debug
  doc: ''
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_inputs
  doc: Input sequence file path (FASTA, GenBank, Pfam CSV)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- deepbgc
- pipeline
