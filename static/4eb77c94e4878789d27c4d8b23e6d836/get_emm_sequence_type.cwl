class: CommandLineTool
id: get_emm_sequence_type.cwl
inputs:
- id: in_species_mlst_scheme
  doc: Species of MLST scheme (0 or more comma separated)
  type: long?
  inputBinding:
    prefix: -s
- id: in_number_of_threads
  doc: Number of threads [1]
  type: long?
  inputBinding:
    prefix: -d
- id: in_output_fasta_file
  doc: Output a FASTA file of concatenated alleles and unknown sequences
  type: File?
  inputBinding:
    prefix: -c
- id: in_output_phylip_file
  doc: Output a phylip file of concatenated alleles and unknown sequences
  type: File?
  inputBinding:
    prefix: -y
- id: in_output_directory
  doc: Output directory [.]
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_print_available_schemes
  doc: Print out all available MLST schemes and exit
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_print_version_number
  doc: Print version number and exit
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fasta_file
  doc: Output a FASTA file of concatenated alleles and unknown sequences
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fasta_file)
- id: out_output_phylip_file
  doc: Output a phylip file of concatenated alleles and unknown sequences
  type: File?
  outputBinding:
    glob: $(inputs.in_output_phylip_file)
- id: out_output_directory
  doc: Output directory [.]
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- get_emm_sequence_type
