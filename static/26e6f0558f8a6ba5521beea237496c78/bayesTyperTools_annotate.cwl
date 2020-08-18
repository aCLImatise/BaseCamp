class: CommandLineTool
id: ../../../bayesTyperTools_annotate.cwl
inputs:
- id: arg_variant_format
  doc: '[ --variant-file ] arg             variant file (vcf format).'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_annotation_file
  doc: '[ --annotation-file ] arg          annotation file (vcf format).'
  type: boolean
  inputBinding:
    prefix: -a
- id: arg_output_prefix
  doc: '[ --output-prefix ] arg            output prefix.'
  type: boolean
  inputBinding:
    prefix: -o
- id: compress_output_files
  doc: '[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.'
  type: boolean
  inputBinding:
    prefix: -z
- id: clear_previous_annotations
  doc: '[ --clear-prev-annotation ] [=arg(=1)] (=0) clear previous annotations (variant
    id and AAI).'
  type: boolean
  inputBinding:
    prefix: -c
- id: match_threshold
  doc: (=0.5)          minimum sequence overlap between input allele and annotation
    allele.
  type: string
  inputBinding:
    prefix: --match-threshold
- id: window_size_scale
  doc: (=3)          window size allele length scaling factor.
  type: string
  inputBinding:
    prefix: --window-size-scale
outputs: []
cwlVersion: v1.1
baseCommand:
- bayesTyperTools
- annotate
