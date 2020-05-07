class: CommandLineTool
id: SVrefine.cwl
inputs:
- id: sv_regions
  doc: Specify the path to which to write a BED file containing the widened coordinates
    of structural variants. These are the same coordinates reported in the "WIDENEDREF"
    tag in the variant VCF. (Optional).
  type: File
  inputBinding:
    prefix: --svregions
- id: includes_eqs
  doc: Write sequences from the reference FASTA file into the "REF" and "ALT" fields
    of the VCF.
  type: boolean
  inputBinding:
    prefix: --includeseqs
- id: verbose
  doc: Write verbose output, debugging information, etc. to the log file.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- SVrefine
