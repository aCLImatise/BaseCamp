class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gaas_ncbi_get_genome_tree.pl.cwl
inputs:
- id: _taxid_specify
  doc: <--taxid> To specify a specific taxid. Allow to focus on a specific part of
    the tree of life.
  type: string
  inputBinding:
    prefix: -t
- id: for_debugging_purpose
  doc: For debugging purpose.
  type: boolean
  inputBinding:
    prefix: -v
- id: quiet_avoid_printing
  doc: Quiet to avoid printing the progress on STDOUT
  type: boolean
  inputBinding:
    prefix: -q
- id: outfile
  doc: The name of the output file. By default the output is the standard output
  type: string
  inputBinding:
    prefix: --outfile
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_ncbi_get_genome_tree.pl
