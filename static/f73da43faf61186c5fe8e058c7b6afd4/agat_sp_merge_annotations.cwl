class: CommandLineTool
id: ../../../agat_sp_merge_annotations.pl.cwl
inputs:
- id: gff
  doc: 'Input GTF/GFF file(s). You can specify as much file you want like so: -f file1
    -f file2 -f file3'
  type: string
  inputBinding:
    prefix: --gff
- id: output
  doc: Output gff3 file where the gene incriminated will be write.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_merge_annotations.pl
