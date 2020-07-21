class: CommandLineTool
id: ../../../htsbox_vcfview.cwl
inputs:
- id: output_in_bcf
  doc: output in BCF
  type: boolean
  inputBinding:
    prefix: -b
- id: input_is_vcf
  doc: input is VCF
  type: boolean
  inputBinding:
    prefix: -S
- id: output_file_name
  doc: output file name [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: compression_level
  doc: compression level [0]
  type: long
  inputBinding:
    prefix: -l
- id: list_reference_names
  doc: list of reference names and lengths [null]
  type: File
  inputBinding:
    prefix: -t
- id: list_samples_started
  doc: list of samples (STR if started with ':'; FILE otherwise) [null]
  type: File
  inputBinding:
    prefix: -s
- id: drop_genotype_information
  doc: drop individual genotype information
  type: boolean
  inputBinding:
    prefix: -G
- id: exclude_indels
  doc: exclude INDELs
  type: boolean
  inputBinding:
    prefix: -I
- id: vcf_view
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_dot_bcf
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- vcfview
