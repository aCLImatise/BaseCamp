class: CommandLineTool
id: gdtools_PHYLOGENY.cwl
inputs:
- id: in_verbose
  doc: produce output for each mutation counted.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_output
  doc: path to output file with added mutation data. (DEFAULT=.)
  type: File?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: File containing reference sequences in GenBank, GFF3, or FASTA format. Option
    may be provided multiple times for multiple files (REQUIRED)
  type: File?
  inputBinding:
    prefix: --reference
- id: in_missing_as_ancestral
  doc: Count missing data (mutations in UN regions) as the ancestral allele rather
    than as an unknown allele (N).
  type: boolean?
  inputBinding:
    prefix: --missing-as-ancestral
- id: in_phylogeny_aware
  doc: Check the optional 'phylogeny_id' field when deciding if entries are equivalent
  type: boolean?
  inputBinding:
    prefix: --phylogeny-aware
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: path to output file with added mutation data. (DEFAULT=.)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- gdtools
- PHYLOGENY
