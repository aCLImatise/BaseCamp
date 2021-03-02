class: CommandLineTool
id: extract_genome_region.cwl
inputs:
- id: in_naming
  doc: "[csv|seq_range|csv_seq_range]\nOptions regarding how each new fasta record\n\
    will be named. See main help-text for\nexplainations of options. [default='csv']"
  type: boolean?
  inputBinding:
    prefix: --naming
- id: in_record_name
  doc: The name you want the seq to have in the new fasta.
  type: string
  inputBinding:
    position: 0
- id: in_scaffold
  doc: The name of the seq record in the source fasta (chromosome, scaffold, contig,
    etc).
  type: string
  inputBinding:
    position: 1
- id: in_start
  doc: The first bp of the seq feature you want in the new fasta.
  type: string
  inputBinding:
    position: 2
- id: in_stop
  doc: The last bp of the seq feature you want in the new fasta.
  type: string
  inputBinding:
    position: 3
- id: in_left_bfr
  doc: How many "extra" bp with coords smaller than `start` you want (0 for none).
  type: string
  inputBinding:
    position: 4
- id: in_right_bfr
  doc: How many "extra" bp with coords larger than `stop` you want (0 for none).
  type: string
  inputBinding:
    position: 5
- id: in_csv
  doc: use only the contents of the `record_name` field in the csv file (>CPR23).
  type: string
  inputBinding:
    position: 0
- id: in_seq_range
  doc: use only the `scaffold` name and sequence range (>scaffold1:230-679).
  type: string
  inputBinding:
    position: 1
- id: in_csv_seq_range
  doc: "use both the contents of the `record_name` field and the `scaffold`.\nname\
    \ and sequence range (>CPR23 scaffold1:230-679)."
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- extract_genome_region
