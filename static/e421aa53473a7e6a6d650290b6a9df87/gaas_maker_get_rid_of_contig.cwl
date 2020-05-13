class: CommandLineTool
id: gaas_maker_get_rid_of_contig.pl.cwl
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
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_maker_get_rid_of_contig.pl
