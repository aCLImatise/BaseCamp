class: CommandLineTool
id: vcf_to_matrix.cwl
inputs:
- id: mode
  doc: Data passing mode, must be set to 'commandline' or 'xml'.
  type: string
  inputBinding:
    prefix: --mode
- id: reference_fast_a
  doc: Path to input reference fasta file.
  type: string
  inputBinding:
    prefix: --reference-fasta
- id: reference_dups
  doc: Path to input reference dups file.
  type: string
  inputBinding:
    prefix: --reference-dups
- id: input_files
  doc: Path to input VCF/fasta files for matrix conversion.
  type: string[]
  inputBinding:
    prefix: --input-files
- id: matrix_folder
  doc: Name of folder to write output matries to.
  type: string
  inputBinding:
    prefix: --matrix-folder
- id: stats_folder
  doc: Name of folder to write statistics files to.
  type: string
  inputBinding:
    prefix: --stats-folder
- id: minimum_coverage
  doc: Minimum coverage depth at a position.
  type: long
  inputBinding:
    prefix: --minimum-coverage
- id: minimum_proportion
  doc: Minimum proportion of reads that must match the call at a position.
  type: long
  inputBinding:
    prefix: --minimum-proportion
- id: num_threads
  doc: Number of threads to use when processing input.
  type: string
  inputBinding:
    prefix: --num-threads
- id: d_to_file
  doc: Path to a matrix_dto XML file that defines all the parameters.
  type: string
  inputBinding:
    prefix: --dto-file
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf_to_matrix
