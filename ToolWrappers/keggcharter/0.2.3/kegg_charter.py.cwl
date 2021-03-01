class: CommandLineTool
id: kegg_charter.py.cwl
inputs:
- id: in_f
  doc: '[--show-available-maps]'
  type: File?
  inputBinding:
    prefix: -f
- id: in_output
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_tsv
  doc: "Results will be outputed in TSV format (and not\nEXCEL)."
  type: boolean?
  inputBinding:
    prefix: --tsv
- id: in_resources_directory
  doc: Directory for storing KGML and CSV files.
  type: Directory?
  inputBinding:
    prefix: --resources-directory
- id: in_metabolic_maps
  doc: IDs of metabolic maps to output
  type: string?
  inputBinding:
    prefix: --metabolic-maps
- id: in_genomic_columns
  doc: Names of columns with genomic identification
  type: string?
  inputBinding:
    prefix: --genomic-columns
- id: in_transcript_omic_columns
  doc: Names of columns with transcriptomics quantification
  type: string?
  inputBinding:
    prefix: --transcriptomic-columns
- id: in_tax_a_list
  doc: "List of taxa to represent in genomic potential charts\n(comma separated)"
  type: string?
  inputBinding:
    prefix: --taxa-list
- id: in_number_of_tax_a
  doc: "Number of taxa to represent in genomic potential\ncharts (comma separated)"
  type: long?
  inputBinding:
    prefix: --number-of-taxa
- id: in_kegg_column
  doc: Column with KEGG IDs.
  type: string?
  inputBinding:
    prefix: --kegg-column
- id: in_ko_column
  doc: Column with KOs.
  type: string?
  inputBinding:
    prefix: --ko-column
- id: in_ec_column
  doc: Column with EC numbers.
  type: string?
  inputBinding:
    prefix: --ec-column
- id: in_input_quantification
  doc: "If input table has no quantification, will create a\nmock quantification column"
  type: boolean?
  inputBinding:
    prefix: --input-quantification
- id: in_input_taxonomy
  doc: "If no taxonomy column exists and there is only one\ntaxon in question."
  type: string?
  inputBinding:
    prefix: --input-taxonomy
- id: in_tax_a_column
  doc: "Column with the taxa designations to represent with\nKEGGChart"
  type: string?
  inputBinding:
    prefix: --taxa-column
- id: in_resume
  doc: Data inputed has already been analyzed by KEGGCharter.
  type: boolean?
  inputBinding:
    prefix: --resume
- id: in_file
  doc: TSV or EXCEL table with information to chart
  type: File?
  inputBinding:
    prefix: --file
- id: in_show_available_maps
  doc: "Outputs KEGG maps IDs and descriptions to the console\n(so you may pick the\
    \ ones you want!)"
  type: boolean?
  inputBinding:
    prefix: --show-available-maps
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/keggcharter:0.2.3--0
cwlVersion: v1.1
baseCommand:
- kegg_charter.py
