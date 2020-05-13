class: CommandLineTool
id: bedparse_convertChr.cwl
inputs:
- id: bed_file
  doc: Path to the BED file.
  type: string
  inputBinding:
    position: 0
- id: assembly
  doc: Assembly of the BED file (either hg38 or mm10).
  type: string
  inputBinding:
    prefix: --assembly
- id: target
  doc: Desidered chromosome name convention (ucsc or ens).
  type: string
  inputBinding:
    prefix: --target
- id: allow_missing
  doc: When a chromosome name can't be matched between USCS and Ensembl set it to
    'NA' (by default thrown as error).
  type: boolean
  inputBinding:
    prefix: --allowMissing
- id: suppress_missing
  doc: When a chromosome name can't be matched between USCS and Ensembl do not report
    it in the output (by default throws an error).
  type: boolean
  inputBinding:
    prefix: --suppressMissing
- id: patches
  doc: Allows conversion of all patches up to p11 for hg38 and p4 for mm10. Without
    this option, if the BED file contains contigs added by a patch the conversion
    terminates with an error (unless the -a or -s flags are present).
  type: boolean
  inputBinding:
    prefix: --patches
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- convertChr
