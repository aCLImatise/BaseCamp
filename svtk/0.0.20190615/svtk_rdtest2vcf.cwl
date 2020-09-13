class: CommandLineTool
id: ../../../svtk_rdtest2vcf.cwl
inputs:
- id: in_contigs
  doc: "Reference fasta index (.fai). If provided, contigs in\nindex will be used\
    \ in VCF header. Otherwise all GRCh37\ncontigs will be used in header.\n"
  type: long
  inputBinding:
    prefix: --contigs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svtk
- rdtest2vcf
