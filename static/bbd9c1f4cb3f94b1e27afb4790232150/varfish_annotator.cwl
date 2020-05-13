class: CommandLineTool
id: varfish_annotator.cwl
inputs:
- id: clin_var_path
  doc: Path to Clinvar TSV file(s) to use for import, see documentation  for more
    information
  type: boolean
  inputBinding:
    prefix: --clinvar-path
- id: hgmd_public
  doc: Path to HTMD Public TSV file to use for import, see documentation  for more
    information
  type: boolean
  inputBinding:
    prefix: --hgmd-public
- id: region
  doc: Genomic region CHR:START-END (1-based) to import
  type: boolean
  inputBinding:
    prefix: --region
- id: thousand_genomes_path
  doc: Path to 1000 genomes VCF file to use for import, see documentation  for more
    information
  type: boolean
  inputBinding:
    prefix: --thousand-genomes-path
- id: case_id
  doc: 'The value to use for case ID Default: .'
  type: boolean
  inputBinding:
    prefix: --case-id
- id: contig_regex
  doc: 'Regular expression to use for selection of contigs Default: ^(chr)?(\d+|X|Y|M|MT)$'
  type: boolean
  inputBinding:
    prefix: --contig-regex
- id: set_id
  doc: 'The value to use for set ID Default: .'
  type: boolean
  inputBinding:
    prefix: --set-id
- id: case_id
  doc: 'The value to use for case ID Default: .'
  type: boolean
  inputBinding:
    prefix: --case-id
- id: contig_regex
  doc: 'Regular expression to use for selection of contigs Default: ^(chr)?(\d+|X|Y|M|MT)$'
  type: boolean
  inputBinding:
    prefix: --contig-regex
- id: set_id
  doc: 'The value to use for set ID Default: .'
  type: boolean
  inputBinding:
    prefix: --set-id
outputs: []
cwlVersion: v1.1
baseCommand:
- varfish-annotator
