class: CommandLineTool
id: agat_sp_functional_statistics.pl.cwl
inputs:
- id: in_gff
  doc: Input GTF/GFF file.
  type: File?
  inputBinding:
    prefix: --gff
- id: in_gs
  doc: "This option inform about the genome size in oder to compute more\nstatistics.\
    \ You can give the size in Nucleotide or directly the\nfasta file."
  type: long?
  inputBinding:
    prefix: --gs
- id: in_output
  doc: "File where will be written the result. If no output file is\nspecified, the\
    \ output will be written to STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_agat_sp_functional_statistics_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "File where will be written the result. If no output file is\nspecified, the\
    \ output will be written to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_functional_statistics.pl
