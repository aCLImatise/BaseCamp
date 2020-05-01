#!/usr/bin/env cwl-runner

baseCommand:
- extract_genome_region
class: CommandLineTool
cwlVersion: v1.0
id: extract_genome_region
inputs:
- doc: The name you want the seq to have in the new fasta.
  id: record_name
  inputBinding:
    position: 0
  type: string
- doc: The name of the seq record in the source fasta (chromosome, scaffold, contig,
    etc).
  id: scaffold
  inputBinding:
    position: 1
  type: string
- doc: The first bp of the seq feature you want in the new fasta.
  id: start
  inputBinding:
    position: 2
  type: string
- doc: The last bp of the seq feature you want in the new fasta.
  id: stop
  inputBinding:
    position: 3
  type: string
- doc: How many "extra" bp with coords smaller than `start` you want (0 for none).
  id: left_bfr
  inputBinding:
    position: 4
  type: string
- doc: How many "extra" bp with coords larger than `stop` you want (0 for none).
  id: right_bfr
  inputBinding:
    position: 5
  type: string
- doc: use only the contents of the `record_name` field in the csv file (>CPR23).
  id: csv
  inputBinding:
    position: 0
  type: string
- doc: use only the `scaffold` name and sequence range (>scaffold1:230-679).
  id: seq_range
  inputBinding:
    position: 1
  type: string
- doc: use both the contents of the `record_name` field and the `scaffold`. name and
    sequence range (>CPR23 scaffold1:230-679).
  id: csv_seq_range
  inputBinding:
    position: 2
  type: string
- doc: "[csv|seq_range|csv_seq_range] Options regarding how each new fasta record\
    \ will be named. See main help-text for explainations of options. [default='csv']"
  id: naming
  inputBinding:
    prefix: --naming
  type: boolean
