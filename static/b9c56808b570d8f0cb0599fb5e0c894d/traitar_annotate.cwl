class: CommandLineTool
id: traitar_annotate.cwl
inputs:
- id: in_gene_gff_type
  doc: "if the input is amino acids the type of gene\nprediction GFF file can be specified\
    \ for mapping the\nphenotype predictions to the genes"
  type: string?
  inputBinding:
    prefix: --gene_gff_type
- id: in_cpus
  doc: "number of cpus used for the individual steps; maximum\nis number of samples;\
    \ needs parallel\n"
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_positional_arguments
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_input_dir
  doc: directory with the input data
  type: string
  inputBinding:
    position: 1
- id: in_sample_two_file
  doc: "mapping from samples to fasta files (also see gitHub\nhelp): sample1_file_name{tab}sample1_name\n\
    sample2_file_name{tab}sample2_name"
  type: long
  inputBinding:
    position: 2
- id: in_directory_output_created
  doc: "directory for the output; will be created if it\ndoesn't exist yet"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- traitar
- annotate
