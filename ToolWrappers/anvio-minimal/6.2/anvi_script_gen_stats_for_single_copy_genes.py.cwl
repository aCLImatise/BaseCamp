class: CommandLineTool
id: anvi_script_gen_stats_for_single_copy_genes.py.cwl
inputs:
- id: in_list_sources
  doc: Show available single-copy gene search results and exit.
  type: boolean
  inputBinding:
    prefix: --list-sources
- id: in_source
  doc: "Source to focus on. If none declared, all single-copy gene\nsources are going\
    \ to be listed.\n"
  type: string
  inputBinding:
    prefix: --source
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-script-gen_stats_for_single_copy_genes.py
