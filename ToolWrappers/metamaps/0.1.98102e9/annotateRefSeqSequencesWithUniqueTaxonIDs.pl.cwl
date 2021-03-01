class: CommandLineTool
id: annotateRefSeqSequencesWithUniqueTaxonIDs.pl.cwl
inputs:
- id: in_taxonomy_in_directory
  doc: ''
  type: string?
  inputBinding:
    prefix: --taxonomyInDirectory
- id: in_refseq_directory
  doc: ''
  type: string?
  inputBinding:
    prefix: --refSeqDirectory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- annotateRefSeqSequencesWithUniqueTaxonIDs.pl
