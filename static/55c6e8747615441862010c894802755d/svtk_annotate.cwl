class: CommandLineTool
id: svtk_annotate.cwl
inputs:
- id: in_gen_code
  doc: Gencode gene annotations (GTF).
  type: string
  inputBinding:
    prefix: --gencode
- id: in_noncoding
  doc: "Noncoding elements (bed). Columns =\nchr,start,end,element_class,element_name\n"
  type: string
  inputBinding:
    prefix: --noncoding
- id: in_site_dot
  doc: An SV is annotated with a new NONCODING INFO field containing all classes of
  type: string
  inputBinding:
    position: 0
- id: in_vcf
  doc: Structural variants.
  type: string
  inputBinding:
    position: 0
- id: in_annotated_vcf
  doc: Annotated variants.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svtk
- annotate
