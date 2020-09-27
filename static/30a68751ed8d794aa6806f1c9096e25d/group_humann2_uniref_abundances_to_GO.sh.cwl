class: CommandLineTool
id: group_humann2_uniref_abundances_to_GO.sh.cwl
inputs:
- id: in_path_file_uniref_gene
  doc: Path to file with UniRef50 gene family abundance (HUMAnN2 output)
  type: File
  inputBinding:
    prefix: -i
- id: in_path_file_molecular
  doc: Path to file which will contain GO slim term abudances corresponding to molecular
    functions
  type: boolean
  inputBinding:
    prefix: -m
- id: in_path_file_biological
  doc: Path to file which will contain GO slim term abudances corresponding to biological
    processes
  type: boolean
  inputBinding:
    prefix: -b
- id: in_path_file_cellular
  doc: Path to file which will contain GO slim term abudances corresponding to cellular
    components
  type: boolean
  inputBinding:
    prefix: -c
- id: in_path_basic_gene
  doc: Path to basic Gene Ontology file
  type: boolean
  inputBinding:
    prefix: -a
- id: in_path_basic_slim
  doc: Path to basic slim Gene Ontology file
  type: boolean
  inputBinding:
    prefix: -s
- id: in_path_file_humann_uniref
  doc: Path to file with HUMAnN2 correspondance betwen UniRef50 and GO
  type: boolean
  inputBinding:
    prefix: -u
- id: in_path_goatools_scripts
  doc: Path to GoaTools scripts
  type: boolean
  inputBinding:
    prefix: -g
- id: in_path_to_scripts
  doc: Path to HUMAnN2 scripts
  type: boolean
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_file_uniref_gene
  doc: Path to file with UniRef50 gene family abundance (HUMAnN2 output)
  type: File
  outputBinding:
    glob: $(inputs.in_path_file_uniref_gene)
cwlVersion: v1.1
baseCommand:
- group_humann2_uniref_abundances_to_GO.sh
