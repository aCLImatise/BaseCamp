class: CommandLineTool
id: deepbgc_pipeline.cwl
inputs:
- id: inputs
  doc: Input sequence file path (FASTA, GenBank, Pfam CSV)
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Custom output directory path
  type: string
  inputBinding:
    prefix: --output
- id: limit_to_record
  doc: Process only specific record ID. Can be provided multiple times
  type: string
  inputBinding:
    prefix: --limit-to-record
- id: minimal_output
  doc: Produce minimal output with just the GenBank sequence file
  type: boolean
  inputBinding:
    prefix: --minimal-output
- id: prodigal_meta_mode
  doc: Run Prodigal in '-p meta' mode to enable detecting genes in short contigs
  type: boolean
  inputBinding:
    prefix: --prodigal-meta-mode
- id: protein
  doc: Accept amino-acid protein sequences as input (experimental). Will treat each
    file as a single record with multiple proteins.
  type: boolean
  inputBinding:
    prefix: --protein
- id: detector
  doc: Trained detection model name (deepbgc) or path to trained model pickle file.
    Can be provided multiple times (-d first -d second)
  type: string
  inputBinding:
    prefix: --detector
- id: no_detector
  doc: Disable BGC detection
  type: boolean
  inputBinding:
    prefix: --no-detector
- id: label
  doc: Label for detected clusters (equal to --detector by default). If multiple detectors
    are provided, a label should be provided for each one
  type: string
  inputBinding:
    prefix: --label
- id: score
  doc: 'Average protein-wise DeepBGC score threshold for extracting BGC regions from
    Pfam sequences (default: 0.5)'
  type: string
  inputBinding:
    prefix: --score
- id: merge_max_protein_gap
  doc: 'Merge detected BGCs within given number of proteins (default: 0)'
  type: string
  inputBinding:
    prefix: --merge-max-protein-gap
- id: merge_max_nucl_gap
  doc: 'Merge detected BGCs within given number of nucleotides (default: 0)'
  type: string
  inputBinding:
    prefix: --merge-max-nucl-gap
- id: min_nucl
  doc: 'Minimum BGC nucleotide length (default: 1)'
  type: long
  inputBinding:
    prefix: --min-nucl
- id: min_proteins
  doc: 'Minimum number of proteins in a BGC (default: 1)'
  type: long
  inputBinding:
    prefix: --min-proteins
- id: min_domains
  doc: 'Minimum number of protein domains in a BGC (default: 1)'
  type: long
  inputBinding:
    prefix: --min-domains
- id: min_bio_domains
  doc: 'Minimum number of known biosynthetic (as defined by antiSMASH) protein domains
    in a BGC (default: 0)'
  type: long
  inputBinding:
    prefix: --min-bio-domains
- id: classifier
  doc: Trained classification model name (run "deepbgc download" to download models)
    or path to trained model pickle file. Can be provided multiple times (-c first
    -c second)
  type: string
  inputBinding:
    prefix: --classifier
- id: no_classifier
  doc: Disable BGC classification
  type: boolean
  inputBinding:
    prefix: --no-classifier
- id: classifier_score
  doc: 'DeepBGC classification score threshold for assigning classes to BGCs (default:
    0.5)'
  type: string
  inputBinding:
    prefix: --classifier-score
outputs: []
cwlVersion: v1.1
baseCommand:
- deepbgc
- pipeline
