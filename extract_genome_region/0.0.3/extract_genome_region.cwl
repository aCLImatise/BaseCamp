class: CommandLineTool
id: extract_genome_region.cwl
inputs:
- id: record_name
  doc: The name you want the seq to have in the new fasta.
  type: string
  inputBinding:
    position: 0
- id: scaffold
  doc: The name of the seq record in the source fasta (chromosome, scaffold, contig,
    etc).
  type: string
  inputBinding:
    position: 1
- id: start
  doc: The first bp of the seq feature you want in the new fasta.
  type: string
  inputBinding:
    position: 2
- id: stop
  doc: The last bp of the seq feature you want in the new fasta.
  type: string
  inputBinding:
    position: 3
- id: left_bfr
  doc: How many "extra" bp with coords smaller than `start` you want (0 for none).
  type: string
  inputBinding:
    position: 4
- id: right_bfr
  doc: How many "extra" bp with coords larger than `stop` you want (0 for none).
  type: string
  inputBinding:
    position: 5
- id: csv
  doc: use only the contents of the `record_name` field in the csv file (>CPR23).
  type: string
  inputBinding:
    position: 0
- id: seq_range
  doc: use only the `scaffold` name and sequence range (>scaffold1:230-679).
  type: string
  inputBinding:
    position: 1
- id: csv_seq_range
  doc: use both the contents of the `record_name` field and the `scaffold`. name and
    sequence range (>CPR23 scaffold1:230-679).
  type: string
  inputBinding:
    position: 2
- id: naming
  doc: "[csv|seq_range|csv_seq_range] Options regarding how each new fasta record\
    \ will be named. See main help-text for explainations of options. [default='csv']"
  type: boolean
  inputBinding:
    prefix: --naming
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_genome_region
