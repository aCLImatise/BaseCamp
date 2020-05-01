#!/usr/bin/env cwl-runner

baseCommand:
- varfish-annotator
class: CommandLineTool
cwlVersion: v1.0
id: varfish-annotator
inputs:
- doc: Path to Clinvar TSV file(s) to use for import, see documentation  for more
    information
  id: clin_var_path
  inputBinding:
    prefix: --clinvar-path
  type: boolean
- doc: Path to HTMD Public TSV file to use for import, see documentation  for more
    information
  id: hgmd_public
  inputBinding:
    prefix: --hgmd-public
  type: boolean
- doc: Genomic region CHR:START-END (1-based) to import
  id: region
  inputBinding:
    prefix: --region
  type: boolean
- doc: Path to 1000 genomes VCF file to use for import, see documentation  for more
    information
  id: thousand_genomes_path
  inputBinding:
    prefix: --thousand-genomes-path
  type: boolean
- doc: 'The value to use for case ID Default: .'
  id: case_id
  inputBinding:
    prefix: --case-id
  type: boolean
- doc: 'Regular expression to use for selection of contigs Default: ^(chr)?(\d+|X|Y|M|MT)$'
  id: contig_regex
  inputBinding:
    prefix: --contig-regex
  type: boolean
- doc: 'The value to use for set ID Default: .'
  id: set_id
  inputBinding:
    prefix: --set-id
  type: boolean
- doc: 'The value to use for case ID Default: .'
  id: case_id
  inputBinding:
    prefix: --case-id
  type: boolean
- doc: 'Regular expression to use for selection of contigs Default: ^(chr)?(\d+|X|Y|M|MT)$'
  id: contig_regex
  inputBinding:
    prefix: --contig-regex
  type: boolean
- doc: 'The value to use for set ID Default: .'
  id: set_id
  inputBinding:
    prefix: --set-id
  type: boolean
