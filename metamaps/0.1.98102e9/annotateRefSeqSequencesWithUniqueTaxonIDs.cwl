class: CommandLineTool
id: annotateRefSeqSequencesWithUniqueTaxonIDs.pl.cwl
inputs:
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: annotate_refseq_sequences_with_unique_taxonid_spl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: refseq_directory
  doc: ''
  type: string
  inputBinding:
    prefix: --refSeqDirectory
- id: taxonomy_in_directory
  doc: ''
  type: string
  inputBinding:
    prefix: --taxonomyInDirectory
- id: taxonomy_out_directory
  doc: ''
  type: string
  inputBinding:
    prefix: --taxonomyOutDirectory
outputs: []
cwlVersion: v1.1
baseCommand:
- annotateRefSeqSequencesWithUniqueTaxonIDs.pl
