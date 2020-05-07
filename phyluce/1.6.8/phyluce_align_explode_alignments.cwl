class: CommandLineTool
id: phyluce_align_explode_alignments.cwl
inputs:
- id: alignments
  doc: Input folder of alignments
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: Output folder of fasta files
  type: string
  inputBinding:
    prefix: --output
- id: input_format
  doc: The input alignment format
  type: string
  inputBinding:
    prefix: --input-format
- id: conf
  doc: Config file for renaming
  type: string
  inputBinding:
    prefix: --conf
- id: section
  doc: Section of config file to use
  type: string
  inputBinding:
    prefix: --section
- id: exclude
  doc: Taxa/taxon to exclude
  type: string[]
  inputBinding:
    prefix: --exclude
- id: by_tax_on
  doc: Explode file by taxon instead of by-locus
  type: boolean
  inputBinding:
    prefix: --by-taxon
- id: include_locus
  doc: Include the locus name in the FASTA header
  type: boolean
  inputBinding:
    prefix: --include-locus
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_explode_alignments
