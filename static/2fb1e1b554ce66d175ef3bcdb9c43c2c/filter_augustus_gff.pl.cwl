class: CommandLineTool
id: filter_augustus_gff.pl.cwl
inputs:
- id: in_in
  doc: AUGUSTUS output file in GFF format
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: "If specified, write filtered gene predictions\nin GTF format to given file.\
    \ If not specified,\nonly the number of supported genes is printed\nto STDOUT."
  type: long?
  inputBinding:
    prefix: --out
- id: in_src
  doc: "=(E|P)                         Source tag of evidence to filter for, e.g.\
    \ P\nfor protein or E for ESTs/RNA-Seq introns,\ncan in principle be any source,\
    \ but only one\nat a time. Support threshold is one hint per\ntranscript."
  type: boolean?
  inputBinding:
    prefix: --src
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_in
  doc: AUGUSTUS output file in GFF format
  type: File?
  outputBinding:
    glob: $(inputs.in_in)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/braker2:2.1.6--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- filter_augustus_gff.pl
