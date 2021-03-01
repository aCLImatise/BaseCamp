class: CommandLineTool
id: trim_isoseq_polyA.cwl
inputs:
- id: in_arg_input_fasta
  doc: "[ --input ] arg              The input fasta file with polyA, can be\ncompressed\
    \ by gzip or bzip2"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_hmm_model
  doc: "[ --model ] arg              HMM model file to use; if not specified, will\n\
    use default values"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_fasta_file_polya
  doc: "[ --polyA_training ] arg     Fasta file with polyA sequences for training\n\
    with maximum-likelihood estimation"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_arg_fasta_file_nonpolya
  doc: "[ --non_polyA_training ] arg Fasta file with non-polyA sequences for\ntraining\
    \ with maximum-likelihood estimation"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_arg_new_trained
  doc: '[ --new_model ] arg          New trained model file to output'
  type: File?
  inputBinding:
    prefix: -n
- id: in_color_sequences_outputinstead
  doc: "[ --color ]                  To color polyA sequences in the output\ninstead\
    \ of trimming away them"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_number_use
  doc: '[ --thread ] arg (=8)        Number of threads to use'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_input_generic_fasta
  doc: "[ --generic ]                Input is generic fasta format; By default,\n\
    this script adjusts the coordinate in the\nheader section of output fasta format\
    \ for\nIso-seq input. This option switches off this\nbehavior.\n"
  type: boolean?
  inputBinding:
    prefix: -G
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_new_trained
  doc: '[ --new_model ] arg          New trained model file to output'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_new_trained)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/trim_isoseq_polya:0.0.3--h7c8eefc_0
cwlVersion: v1.1
baseCommand:
- trim_isoseq_polyA
