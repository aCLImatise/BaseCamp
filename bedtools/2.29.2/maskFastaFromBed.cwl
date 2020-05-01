#!/usr/bin/env cwl-runner

baseCommand:
- maskFastaFromBed
class: CommandLineTool
cwlVersion: v1.0
id: maskfastafrombed
inputs:
- doc: Input FASTA file
  id: fi
  inputBinding:
    prefix: -fi
  type: boolean
- doc: BED/GFF/VCF file of ranges to mask in -fi
  id: bed
  inputBinding:
    prefix: -bed
  type: boolean
- doc: Output FASTA file
  id: fo
  inputBinding:
    prefix: -fo
  type: boolean
- doc: Enforce "soft" masking. Mask with lower-case bases, instead of masking with
    Ns.
  id: soft
  inputBinding:
    prefix: -soft
  type: boolean
- doc: Replace masking character. Use another character, instead of masking with Ns.
  id: mc
  inputBinding:
    prefix: -mc
  type: boolean
- doc: Use full fasta header. By default, only the word before the first space or
    tab is used.
  id: full_header
  inputBinding:
    prefix: -fullHeader
  type: boolean
