class: CommandLineTool
id: mimodd_varextract.cwl
inputs:
- id: in_keep_alts
  doc: "keep all alternate allele candidates even if they do\nnot appear in any genotype"
  type: string[]
  inputBinding:
    prefix: --keep-alts
- id: in_verbose
  doc: verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_ofile
  doc: "redirect the output (variant sites) to the specified\nfile (default: stdout)\n"
  type: File?
  inputBinding:
    prefix: --ofile
- id: in_var_extract
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "redirect the output (variant sites) to the specified\nfile (default: stdout)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_ofile)
hints: []
cwlVersion: v1.1
baseCommand:
- mimodd
- varextract
