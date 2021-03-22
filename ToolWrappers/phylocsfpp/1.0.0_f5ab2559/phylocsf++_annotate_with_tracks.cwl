class: CommandLineTool
id: phylocsf++_annotate_with_tracks.cwl
inputs:
- id: in_output
  doc: "Path where output GFF/GTF will be written to. If it does not\nexist, it will\
    \ be created. Default: output files are stored next\nto the input files.\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_phylo_csf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phylocsfpp:1.0.0_f5ab2559--hdd86bf5_0
cwlVersion: v1.1
baseCommand:
- phylocsf++
- annotate-with-tracks
