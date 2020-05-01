#!/usr/bin/env cwl-runner

baseCommand:
- ldHgGene
class: CommandLineTool
cwlVersion: v1.0
id: ldhggene
inputs:
- doc: codon in GFF/GTF after CDS
  id: implied_stop_after_cds
  inputBinding:
    prefix: -impliedStopAfterCds
  type: string
