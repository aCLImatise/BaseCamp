class: CommandLineTool
id: ariba_aln2meta.cwl
inputs:
- id: in_genetic_code
  doc: "Number of genetic code to use. Currently supported\n1,4,11 [11]"
  type: long?
  inputBinding:
    prefix: --genetic_code
- id: in_variant_only
  doc: "Use this to flag all sequences as variant only. By\ndefault they are considered\
    \ to be presence/absence\n"
  type: boolean?
  inputBinding:
    prefix: --variant_only
- id: in_aln_fast_a
  doc: Multi-fasta file of alignments
  type: string
  inputBinding:
    position: 0
- id: in_variants_tsv
  doc: TSV file of variants information
  type: string
  inputBinding:
    position: 1
- id: in_out_prefix
  doc: Prefix of output filenames
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
- ariba
- aln2meta
