class: CommandLineTool
id: varfish_annotator_init_db.cwl
inputs:
- id: in_clin_var_path
  doc: "Path to Clinvar TSV file(s) to use for import, see documentation for\nmore\
    \ information"
  type: boolean?
  inputBinding:
    prefix: --clinvar-path
- id: in_db_release_info
  doc: Provide database release information as "$db:$release" for storage in DB
  type: boolean?
  inputBinding:
    prefix: --db-release-info
- id: in_ex_ac_path
  doc: "Path to ExAC VCF file to use for import, see documentation for more\ninformation"
  type: boolean?
  inputBinding:
    prefix: --exac-path
- id: in_g_nomad_exo_mes_path
  doc: "Path to gnomAD exomes VCF file to use for import, see documentation for\n\
    more information"
  type: boolean?
  inputBinding:
    prefix: --gnomad-exomes-path
- id: in_g_nomad_genomes_path
  doc: "Path to gnomAD genomes VCF file to use for import, see documentation for\n\
    more information"
  type: boolean?
  inputBinding:
    prefix: --gnomad-genomes-path
- id: in_region
  doc: Genomic region CHR:START-END (1-based) to import
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_thousand_genomes_path
  doc: "Path to 1000 genomes VCF file to use for import, see documentation for\nmore\
    \ information\n"
  type: boolean?
  inputBinding:
    prefix: --thousand-genomes-path
- id: in_in_it_db
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- varfish-annotator
- init-db
