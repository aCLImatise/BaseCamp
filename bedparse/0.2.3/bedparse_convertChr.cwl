class: CommandLineTool
id: ../../../bedparse_convertChr.cwl
inputs:
- id: in_assembly
  doc: Assembly of the BED file (either hg38 or mm10).
  type: File
  inputBinding:
    prefix: --assembly
- id: in_target
  doc: Desidered chromosome name convention (ucsc or ens).
  type: string
  inputBinding:
    prefix: --target
- id: in_allow_missing
  doc: "When a chromosome name can't be matched between USCS\nand Ensembl set it to\
    \ 'NA' (by default thrown as\nerror)."
  type: boolean
  inputBinding:
    prefix: --allowMissing
- id: in_suppress_missing
  doc: "When a chromosome name can't be matched between USCS\nand Ensembl do not report\
    \ it in the output (by default\nthrows an error)."
  type: boolean
  inputBinding:
    prefix: --suppressMissing
- id: in_patches
  doc: "Allows conversion of all patches up to p11 for hg38\nand p4 for mm10. Without\
    \ this option, if the BED file\ncontains contigs added by a patch the conversion\n\
    terminates with an error (unless the -a or -s flags\nare present).\n"
  type: boolean
  inputBinding:
    prefix: --patches
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedparse
- convertChr
