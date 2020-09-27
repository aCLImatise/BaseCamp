class: CommandLineTool
id: vcf_to_matrix.cwl
inputs:
- id: in_mode
  doc: "Data passing mode, must be set to 'commandline' or\n'xml'."
  type: string
  inputBinding:
    prefix: --mode
- id: in_reference_fast_a
  doc: Path to input reference fasta file.
  type: File
  inputBinding:
    prefix: --reference-fasta
- id: in_reference_dups
  doc: Path to input reference dups file.
  type: File
  inputBinding:
    prefix: --reference-dups
- id: in_input_files
  doc: Path to input VCF/fasta files for matrix conversion.
  type: string[]
  inputBinding:
    prefix: --input-files
- id: in_matrix_folder
  doc: Name of folder to write output matries to.
  type: Directory
  inputBinding:
    prefix: --matrix-folder
- id: in_stats_folder
  doc: Name of folder to write statistics files to.
  type: Directory
  inputBinding:
    prefix: --stats-folder
- id: in_minimum_coverage
  doc: Minimum coverage depth at a position.
  type: string
  inputBinding:
    prefix: --minimum-coverage
- id: in_minimum_proportion
  doc: "Minimum proportion of reads that must match the call\nat a position."
  type: string
  inputBinding:
    prefix: --minimum-proportion
- id: in_num_threads
  doc: Number of threads to use when processing input.
  type: long
  inputBinding:
    prefix: --num-threads
- id: in_d_to_file
  doc: "Path to a matrix_dto XML file that defines all the\nparameters.\n"
  type: File
  inputBinding:
    prefix: --dto-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_matrix_folder
  doc: Name of folder to write output matries to.
  type: Directory
  outputBinding:
    glob: $(inputs.in_matrix_folder)
cwlVersion: v1.1
baseCommand:
- vcf_to_matrix
