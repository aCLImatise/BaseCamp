class: CommandLineTool
id: ../../../gaas_maker_get_rid_of_contig.pl.cwl
inputs:
- id: datastore_name
  doc: Input datastore log file
  type: string
  inputBinding:
    prefix: --datastore-name
- id: contig_name
  doc: Input file containing the list of wrong contig
  type: string
  inputBinding:
    prefix: --contig-name
- id: delete_contig
  doc: <log> option will only delete contigs in the log file <all> option will delete
    contigs in the log file and contigs' folders
  type: string
  inputBinding:
    prefix: --delete-contig
- id: output
  doc: File output name
  type: string
  inputBinding:
    prefix: --output
- id: get
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: rid
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: contigs
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: not
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: processed
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: properly
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: by
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: maker
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: log
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 12
- id: and
  doc: ''
  type: string
  inputBinding:
    position: 13
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_maker_get_rid_of_contig.pl
