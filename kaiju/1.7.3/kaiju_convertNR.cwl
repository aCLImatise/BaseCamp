class: CommandLineTool
id: ../../../kaiju_convertNR.cwl
inputs:
- id: name_nodesdmp_file
  doc: Name of nodes.dmp file.
  type: File
  inputBinding:
    prefix: -t
- id: name_protaccessiontaxid_file
  doc: Name of prot.accession2taxid file.
  type: File
  inputBinding:
    prefix: -g
- id: name_output_file
  doc: Name of output file.
  type: File
  inputBinding:
    prefix: -o
- id: prefix_taxon_id
  doc: Prefix taxon ID in database names with the first accession number per record.
  type: boolean
  inputBinding:
    prefix: -a
- id: name_nr_file
  doc: Name of NR file. If this option is not used, then the program will read from
    STDIN.
  type: File
  inputBinding:
    prefix: -i
- id: name_file_taxon
  doc: Name of file with taxon IDs. Only records having one of these IDs as ancestor
    in the taxonomy will be used.
  type: File
  inputBinding:
    prefix: -l
- id: name_will_excluded
  doc: Name of file with accession numbers that will be excluded.
  type: File
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- kaiju-convertNR
