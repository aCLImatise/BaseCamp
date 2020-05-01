#!/usr/bin/env cwl-runner

baseCommand:
- Mobius.py
class: CommandLineTool
cwlVersion: v1.0
id: mobius.py
inputs:
- doc: The name of the Splice Junctions tab file (in the format of the one STAR produces)
  id: splice_junctions
  inputBinding:
    position: 0
  type: string
- doc: A fasta file containing the sequence for all genes in genome
  id: genome_fast_a
  inputBinding:
    position: 1
  type: string
- doc: Force blocks where annotated transcripts start and end
  id: force_trans
  inputBinding:
    prefix: -forceTrans
  type: boolean
- doc: Flattened SuperTranscript annotation file
  id: an_no_trans
  inputBinding:
    prefix: -AnnoTrans
  type: string
- doc: The minimum number of reads in all combined samples required to support a splice
    junction (default=5)
  id: read_thresh
  inputBinding:
    prefix: -readThresh
  type: string
