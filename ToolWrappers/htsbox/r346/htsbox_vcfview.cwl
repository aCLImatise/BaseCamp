class: CommandLineTool
id: htsbox_vcfview.cwl
inputs:
- id: in_output_in_bcf
  doc: output in BCF
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_input_is_vcf
  doc: input is VCF
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_output_file_name
  doc: output file name [stdout]
  type: File?
  inputBinding:
    prefix: -o
- id: in_compression_level
  doc: compression level [0]
  type: long?
  inputBinding:
    prefix: -l
- id: in_list_reference_lengths
  doc: list of reference names and lengths [null]
  type: File?
  inputBinding:
    prefix: -t
- id: in_str_list_started
  doc: /STR  list of samples (STR if started with ':'; FILE otherwise) [null]
  type: File?
  inputBinding:
    prefix: -s
- id: in_drop_genotype_information
  doc: drop individual genotype information
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_exclude_indels
  doc: exclude INDELs
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_vcf_view
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_bcf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- htsbox
- vcfview
