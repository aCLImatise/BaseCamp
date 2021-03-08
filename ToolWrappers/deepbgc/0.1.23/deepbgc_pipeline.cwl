class: CommandLineTool
id: deepbgc_pipeline.cwl
inputs:
- id: in_output
  doc: Custom output directory path
  type: File?
  inputBinding:
    prefix: --output
- id: in_limit_to_record
  doc: Process only specific record ID. Can be provided multiple times
  type: string?
  inputBinding:
    prefix: --limit-to-record
- id: in_minimal_output
  doc: Produce minimal output with just the GenBank sequence file
  type: File?
  inputBinding:
    prefix: --minimal-output
- id: in_prodigal_meta_mode
  doc: Run Prodigal in '-p meta' mode to enable detecting genes in short contigs
  type: boolean?
  inputBinding:
    prefix: --prodigal-meta-mode
- id: in_protein
  doc: Accept amino-acid protein sequences as input (experimental). Will treat each
    file as a single record with multiple proteins.
  type: boolean?
  inputBinding:
    prefix: --protein
- id: in_detector
  doc: Trained detection model name (clusterfinder_original, clusterfinder_geneborder,
    deepbgc, clusterfinder_retrained) or path to trained model pickle file. Can be
    provided multiple times (-d first -d second)
  type: File?
  inputBinding:
    prefix: --detector
- id: in_no_detector
  doc: Disable BGC detection
  type: boolean?
  inputBinding:
    prefix: --no-detector
- id: in_label
  doc: Label for detected clusters (equal to --detector by default). If multiple detectors
    are provided, a label should be provided for each one
  type: string?
  inputBinding:
    prefix: --label
- id: in_score
  doc: 'Average protein-wise DeepBGC score threshold for extracting BGC regions from
    Pfam sequences (default: 0.5)'
  type: double?
  inputBinding:
    prefix: --score
- id: in_merge_max_protein_gap
  doc: 'Merge detected BGCs within given number of proteins (default: 0)'
  type: long?
  inputBinding:
    prefix: --merge-max-protein-gap
- id: in_merge_max_nucl_gap
  doc: 'Merge detected BGCs within given number of nucleotides (default: 0)'
  type: long?
  inputBinding:
    prefix: --merge-max-nucl-gap
- id: in_min_nucl
  doc: 'Minimum BGC nucleotide length (default: 1)'
  type: long?
  inputBinding:
    prefix: --min-nucl
- id: in_min_proteins
  doc: 'Minimum number of proteins in a BGC (default: 1)'
  type: long?
  inputBinding:
    prefix: --min-proteins
- id: in_min_domains
  doc: 'Minimum number of protein domains in a BGC (default: 1)'
  type: long?
  inputBinding:
    prefix: --min-domains
- id: in_min_bio_domains
  doc: 'Minimum number of known biosynthetic (as defined by antiSMASH) protein domains
    in a BGC (default: 0)'
  type: long?
  inputBinding:
    prefix: --min-bio-domains
- id: in_classifier
  doc: Trained classification model name (product_activity, product_class) or path
    to trained model pickle file. Can be provided multiple times (-c first -c second)
  type: File?
  inputBinding:
    prefix: --classifier
- id: in_no_classifier
  doc: Disable BGC classification
  type: boolean?
  inputBinding:
    prefix: --no-classifier
- id: in_classifier_score
  doc: "DeepBGC classification score threshold for assigning classes to BGCs (default:\
    \ 0.5)\n"
  type: double?
  inputBinding:
    prefix: --classifier-score
- id: in_inputs
  doc: Input sequence file path (FASTA, GenBank, Pfam CSV)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Custom output directory path
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_minimal_output
  doc: Produce minimal output with just the GenBank sequence file
  type: File?
  outputBinding:
    glob: $(inputs.in_minimal_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepbgc:0.1.23--py_0
cwlVersion: v1.1
baseCommand:
- deepbgc
- pipeline
