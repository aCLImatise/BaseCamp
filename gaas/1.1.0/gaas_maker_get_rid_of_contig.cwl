#!/usr/bin/env cwl-runner

baseCommand:
- gaas_maker_get_rid_of_contig.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_maker_get_rid_of_contig.pl
inputs:
- doc: Input datastore log file
  id: datastore_name
  inputBinding:
    prefix: --datastore-name
  type: string
- doc: Input file containing the list of wrong contig
  id: contig_name
  inputBinding:
    prefix: --contig-name
  type: string
- doc: <log> option will only delete contigs in the log file <all> option will delete
    contigs in the log file and contigs' folders
  id: delete_contig
  inputBinding:
    prefix: --delete-contig
  type: string
- doc: File output name
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: description,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: relevant information as possible,
  id: as
  inputBinding:
    prefix: '- as'
  type: string
- doc: used,
  id: the
  inputBinding:
    prefix: '- the'
  type: string
- doc: sample,
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: of the expected behaviour that is not occurring.
  id: an
  inputBinding:
    prefix: '- an'
  type: string
