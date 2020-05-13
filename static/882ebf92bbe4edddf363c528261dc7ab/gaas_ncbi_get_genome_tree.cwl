class: CommandLineTool
id: gaas_ncbi_get_genome_tree.pl.cwl
inputs:
- id: t
  doc: <--taxid> To specify a specific taxid. Allow to focus on a specific part of
    the tree of life.
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: For debugging purpose.
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: Quiet to avoid printing the progress on STDOUT
  type: boolean
  inputBinding:
    prefix: -q
- id: outfile
  doc: The name of the output file. By default the output is the standard output
  type: string
  inputBinding:
    prefix: --outfile
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
- gaas_ncbi_get_genome_tree.pl
