class: CommandLineTool
id: nextclade.js.cwl
inputs:
- id: in_jobs
  doc: 'Number of CPU threads used by the algorithm. If not specified, using number
    of logical CPU cores, as detected by Node.js runtime  [number] [default: 2]'
  type: boolean?
  inputBinding:
    prefix: --jobs
- id: in_input_fast_a
  doc: Path to a .fasta or a .txt file with input sequences  [string] [required]
  type: boolean?
  inputBinding:
    prefix: --input-fasta
- id: in_input_root_seq
  doc: Path to plain text file containing custom root sequence  [string]
  type: boolean?
  inputBinding:
    prefix: --input-root-seq
- id: in_input_tree
  doc: (optional) Path to Auspice JSON v2 file containing custom reference tree. See
    https://nextstrain.org/docs/bioinformatics/data-formats  [string]
  type: boolean?
  inputBinding:
    prefix: --input-tree
- id: in_input_qc_config
  doc: "(optional) Path to a JSON file containing custom configuration of Quality\
    \ Control rules.\nFor an example format see: https://github.com/nextstrain/nextclade/blob/20a9fda5b8046ce26669de2023770790c650daae/packages/web/src/algorithms/defaults/sars-cov-2/qcRulesConfig.ts\
    \  [string]"
  type: boolean?
  inputBinding:
    prefix: --input-qc-config
- id: in_input_gene_map
  doc: "(optional) Path to a JSON file containing custom gene map. Gene map (sometimes\
    \ also called \"gene annotations\") is used to resolve aminoacid changes in genes.\n\
    For an example see https://github.com/nextstrain/nextclade/blob/20a9fda5b8046ce26669de2023770790c650daae/packages/web/src/algorithms/defaults/sars-cov-2/geneMap.json\
    \  [string]"
  type: boolean?
  inputBinding:
    prefix: --input-gene-map
- id: in_input_pcr_primers
  doc: "(optional) Path to a CSV file containing a list of custom PCR primer sites.\
    \ These are used to report mutations in these sites.\nFor an example see https://github.com/nextstrain/nextclade/blob/20a9fda5b8046ce26669de2023770790c650daae/packages/web/src/algorithms/defaults/sars-cov-2/pcrPrimers.csv\
    \  [string]"
  type: boolean?
  inputBinding:
    prefix: --input-pcr-primers
- id: in_output_json
  doc: Path to output JSON results file  [string]
  type: File?
  inputBinding:
    prefix: --output-json
- id: in_output_csv
  doc: Path to output CSV results file  [string]
  type: File?
  inputBinding:
    prefix: --output-csv
- id: in_output_tsv_clades_only
  doc: Path to output CSV clades-only file  [string]
  type: File?
  inputBinding:
    prefix: --output-tsv-clades-only
- id: in_output_tsv
  doc: Path to output TSV results file  [string]
  type: File?
  inputBinding:
    prefix: --output-tsv
- id: in_output_tree
  doc: Path to output Auspice JSON V2 results file. See https://nextstrain.org/docs/bioinformatics/data-formats  [string]
  type: File?
  inputBinding:
    prefix: --output-tree
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_json
  doc: Path to output JSON results file  [string]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_json)
- id: out_output_csv
  doc: Path to output CSV results file  [string]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_csv)
- id: out_output_tsv_clades_only
  doc: Path to output CSV clades-only file  [string]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_tsv_clades_only)
- id: out_output_tsv
  doc: Path to output TSV results file  [string]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_tsv)
- id: out_output_tree
  doc: Path to output Auspice JSON V2 results file. See https://nextstrain.org/docs/bioinformatics/data-formats  [string]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_tree)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nextclade_js:0.14.2--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- nextclade.js
