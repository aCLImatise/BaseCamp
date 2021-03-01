class: CommandLineTool
id: kaiju_convertNR.cwl
inputs:
- id: in_name_nodesdmp_file
  doc: Name of nodes.dmp file.
  type: File?
  inputBinding:
    prefix: -t
- id: in_name_protaccessiontaxid_file
  doc: Name of prot.accession2taxid file.
  type: File?
  inputBinding:
    prefix: -g
- id: in_name_output_file
  doc: Name of output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_prefix_taxon_id
  doc: Prefix taxon ID in database names with the first accession number per record.
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_name_nr_file
  doc: Name of NR file. If this option is not used, then the program will read from
    STDIN.
  type: File?
  inputBinding:
    prefix: -i
- id: in_name_file_taxon
  doc: Name of file with taxon IDs. Only records having one of these IDs as ancestor
    in the taxonomy will be used.
  type: File?
  inputBinding:
    prefix: -l
- id: in_name_file_excluded
  doc: Name of file with accession numbers that will be excluded.
  type: File?
  inputBinding:
    prefix: -e
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kaiju:1.7.4--h8b12597_0
cwlVersion: v1.1
baseCommand:
- kaiju-convertNR
