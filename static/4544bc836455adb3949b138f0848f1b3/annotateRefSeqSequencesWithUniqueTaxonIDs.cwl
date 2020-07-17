class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/annotateRefSeqSequencesWithUniqueTaxonIDs.pl.cwl
inputs:
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
