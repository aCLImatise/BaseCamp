class: CommandLineTool
id: blast2gff_uniprot.cwl
inputs:
- id: in_verbose
  doc: "Uniprot database used with BLAST  [default:\nUNIPROT-SP]"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_no_split
  doc: "if used, the script assumes that the sequence\nheader will be used as gene_id"
  type: boolean?
  inputBinding:
    prefix: --no-split
- id: in_fast_a_file
  doc: Optional FASTA file with the query sequences
  type: File?
  inputBinding:
    prefix: --fasta-file
- id: in_db_quality
  doc: 'Quality of the DB used  [default: 10]'
  type: long?
  inputBinding:
    prefix: --db-quality
- id: in_bit_score
  doc: "Minimum bitscore to keep the annotation\n[default: 0.0]"
  type: double?
  inputBinding:
    prefix: --bitscore
- id: in_attr_value
  doc: "Additional attribute and value to add to each\nannotation, in the form attr:value"
  type: string?
  inputBinding:
    prefix: --attr-value
- id: in_feat_type
  doc: 'Feature type to use in the GFF  [default: CDS]'
  type: string?
  inputBinding:
    prefix: --feat-type
- id: in_progress
  doc: Shows Progress Bar
  type: boolean?
  inputBinding:
    prefix: --progress
- id: in_blast_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_gff_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- blast2gff
- uniprot
