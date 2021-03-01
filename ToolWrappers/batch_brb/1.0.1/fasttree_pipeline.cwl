class: CommandLineTool
id: fasttree_pipeline.cwl
inputs:
- id: in_database
  doc: BLAST database to retrieve sequences from, required for text or csv files
  type: boolean?
  inputBinding:
    prefix: --database
- id: in_frequency
  doc: OPTIONAL, frequency of gaps allowed per residue, default is 0.25
  type: boolean?
  inputBinding:
    prefix: --frequency
- id: in_csv
  doc: OPTIONAL, CSV of ortholog results, the first column must be query accessions
    with the heading Accession, remaining columns must be the results with one column
    per organism, the first row should be organism names
  type: boolean?
  inputBinding:
    prefix: -csv
- id: in_optional_model_wag
  doc: OPTIONAL, model for phylogenetic analysis (choice of lg or wag for protein
    or gtr for nucleotide), default if not supplied is JTT for protein and JC for
    nucleotide
  type: boolean?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/batch_brb:1.0.1--0
cwlVersion: v1.1
baseCommand:
- fasttree_pipeline
