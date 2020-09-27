class: CommandLineTool
id: bayesTyperTools_annotate.cwl
inputs:
- id: in_arg_variant_format
  doc: '[ --variant-file ] arg             variant file (vcf format).'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_arg_annotation_file
  doc: '[ --annotation-file ] arg          annotation file (vcf format).'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_arg_output_prefix
  doc: '[ --output-prefix ] arg            output prefix.'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_compress_output_files
  doc: '[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.'
  type: File
  inputBinding:
    prefix: -z
- id: in_clear_previous_annotations
  doc: "[ --clear-prev-annotation ] [=arg(=1)] (=0)\nclear previous annotations (variant\
    \ id and AAI)."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_match_threshold
  doc: (=0.5)          minimum sequence overlap between input allele and annotation
    allele.
  type: double
  inputBinding:
    prefix: --match-threshold
- id: in_window_size_scale
  doc: (=3)          window size allele length scaling factor.
  type: long
  inputBinding:
    prefix: --window-size-scale
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_compress_output_files
  doc: '[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip.'
  type: File
  outputBinding:
    glob: $(inputs.in_compress_output_files)
cwlVersion: v1.1
baseCommand:
- bayesTyperTools
- annotate
