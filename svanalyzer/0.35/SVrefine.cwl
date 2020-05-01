#!/usr/bin/env cwl-runner

baseCommand:
- SVrefine
class: CommandLineTool
cwlVersion: v1.0
id: svrefine
inputs:
- doc: Specify the path to which to write a BED file containing the widened coordinates
    of structural variants. These are the same coordinates reported in the "WIDENEDREF"
    tag in the variant VCF. (Optional).
  id: sv_regions
  inputBinding:
    prefix: --svregions
  type: File
- doc: Write sequences from the reference FASTA file into the "REF" and "ALT" fields
    of the VCF.
  id: includes_eqs
  inputBinding:
    prefix: --includeseqs
  type: boolean
- doc: Write verbose output, debugging information, etc. to the log file.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
