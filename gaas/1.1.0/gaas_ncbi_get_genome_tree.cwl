#!/usr/bin/env cwl-runner

baseCommand:
- gaas_ncbi_get_genome_tree.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_ncbi_get_genome_tree.pl
inputs:
- doc: <--taxid> To specify a specific taxid. Allow to focus on a specific part of
    the tree of life.
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: For debugging purpose.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Quiet to avoid printing the progress on STDOUT
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: The name of the output file. By default the output is the standard output
  id: outfile
  inputBinding:
    prefix: --outfile
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
