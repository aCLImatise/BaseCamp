class: CommandLineTool
id: vcfgeno2haplo.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: reference
  doc: FASTA reference file, required with -i and -u
  type: File
  inputBinding:
    prefix: --reference
- id: window_size
  doc: Merge variants at most this many bp apart (default 30)
  type: string
  inputBinding:
    prefix: --window-size
- id: only_variants
  doc: Don't output the entire haplotype, just concatenate REF/ALT strings (delimited
    by ":")
  type: boolean
  inputBinding:
    prefix: --only-variants
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfgeno2haplo
