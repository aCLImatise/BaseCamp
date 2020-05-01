#!/usr/bin/env cwl-runner

baseCommand:
- o-populate-datasets-from-VAMPS-download
class: CommandLineTool
cwlVersion: v1.0
id: o-populate-datasets-from-vamps-download
inputs:
- doc: FASTA file downloaded from VAMPS
  id: fast_a
  inputBinding:
    position: 0
  type: string
- doc: Isolate a particular taxon
  id: tax_on
  inputBinding:
    prefix: --taxon
  type: string
- doc: Output file name
  id: output
  inputBinding:
    prefix: --output
  type: string
