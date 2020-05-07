class: CommandLineTool
id: gdtools_PHYLOGENY.cwl
inputs:
- id: verbose
  doc: produce output for each mutation counted.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: output
  doc: path to output file with added mutation data. (DEFAULT=.)
  type: string
  inputBinding:
    prefix: --output
- id: reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: string
  inputBinding:
    prefix: --reference
- id: missing_as_ancestral
  doc: Count missing data (mutations in UN regions) as the ancestral allele rather
    than as an unknown allele (N).
  type: boolean
  inputBinding:
    prefix: --missing-as-ancestral
- id: phylogeny_aware
  doc: Check the optional 'phylogeny_id' field when deciding if entries are equivalent
  type: boolean
  inputBinding:
    prefix: --phylogeny-aware
outputs: []
cwlVersion: v1.1
baseCommand:
- gdtools
- PHYLOGENY
