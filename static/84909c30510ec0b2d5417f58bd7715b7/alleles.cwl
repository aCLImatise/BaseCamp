class: CommandLineTool
id: alleles.cwl
inputs:
- id: in_input_file
  doc: Input VCF file.
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_arg_output_file
  doc: '[ --output-file ] arg The output file name (VCF / BCF / VCF.gz).'
  type: File?
  inputBinding:
    prefix: -o
- id: in_gt
  doc: "What GT to write: hemi | het | hom | half | first\nfor 1 | 0/1 | 1/1 | ./1\
    \ | first sample GT; default\nis half"
  type: long?
  inputBinding:
    prefix: --gt
- id: in_sample
  doc: (=SAMPLE)   Output sample name
  type: string?
  inputBinding:
    prefix: --sample
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_file
  doc: '[ --output-file ] arg The output file name (VCF / BCF / VCF.gz).'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- alleles
