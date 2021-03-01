class: CommandLineTool
id: agat_sp_merge_annotations.pl.cwl
inputs:
- id: in_gff
  doc: "Input GTF/GFF file(s). You can specify as much file you want\nlike so: -f\
    \ file1 -f file2 -f file3"
  type: File?
  inputBinding:
    prefix: --gff
- id: in_output
  doc: Output gff3 file where the gene incriminated will be write.
  type: File?
  inputBinding:
    prefix: --output
- id: in_agat_sp_merge_annotations_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output gff3 file where the gene incriminated will be write.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.5.1--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_merge_annotations.pl
