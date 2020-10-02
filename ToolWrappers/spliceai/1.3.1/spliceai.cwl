class: CommandLineTool
id: spliceai.cwl
inputs:
- id: in_path_input_vcf
  doc: '[input]     path to the input VCF file, defaults to standard in'
  type: boolean
  inputBinding:
    prefix: -I
- id: in_path_output_standard
  doc: '[output]    path to the output VCF file, defaults to standard out'
  type: File
  inputBinding:
    prefix: -O
- id: in_path_reference_genome
  doc: path to the reference genome fasta file
  type: File
  inputBinding:
    prefix: -R
- id: in_gencode_vlift_canonical
  doc: "\"grch37\" (GENCODE V24lift37 canonical annotation file in\npackage), \"grch38\"\
    \ (GENCODE V24 canonical annotation file in\npackage), or path to a similar custom\
    \ gene annotation file"
  type: File
  inputBinding:
    prefix: -A
- id: in_maximum_distance_variant
  doc: "[distance]  maximum distance between the variant and gained/lost splice\n\
    site, defaults to 50"
  type: boolean
  inputBinding:
    prefix: -D
- id: in_mask_scores_representing
  doc: "[mask]      mask scores representing annotated acceptor/donor gain and\nunannotated\
    \ acceptor/donor loss, defaults to 0\n"
  type: boolean
  inputBinding:
    prefix: -M
- id: in_one_dot_three
  doc: 'optional arguments:'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_path_output_standard
  doc: '[output]    path to the output VCF file, defaults to standard out'
  type: File
  outputBinding:
    glob: $(inputs.in_path_output_standard)
cwlVersion: v1.1
baseCommand:
- spliceai
