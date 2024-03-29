class: CommandLineTool
id: anvi_gen_network.cwl
inputs:
- id: in_profile_db
  doc: "Anvi'o profile database (default: None)"
  type: string?
  inputBinding:
    prefix: --profile-db
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs-database' (default:\
    \ None)"
  type: string?
  inputBinding:
    prefix: --contigs-db
- id: in_annotation_source
  doc: "NAME\nGet functional annotations for a specific annotation\nsource. You can\
    \ use the flag '--list-annotation-\nsources' to learn about what sources are available.\n\
    (default: None)"
  type: string?
  inputBinding:
    prefix: --annotation-source
- id: in_list_annotation_sources
  doc: "List available functional annotation sources.\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --list-annotation-sources
- id: in_values
  doc: "\U0001F37B All anvi'o programs and artifacts:"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-gen-network
