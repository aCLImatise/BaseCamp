class: CommandLineTool
id: vcfgeno2haplo.cwl
inputs:
- id: in_reference
  doc: FASTA reference file, required with -i and -u
  type: File?
  inputBinding:
    prefix: --reference
- id: in_window_size
  doc: Merge variants at most this many bp apart (default 30)
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_only_variants
  doc: "Don't output the entire haplotype, just concatenate\nREF/ALT strings (delimited\
    \ by \":\")"
  type: boolean?
  inputBinding:
    prefix: --only-variants
- id: in_vcf_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vcfgeno2haplo
