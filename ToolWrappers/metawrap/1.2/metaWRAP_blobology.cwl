class: CommandLineTool
id: metaWRAP_blobology.cwl
inputs:
- id: in_assembly_fasta_file
  doc: assembly fasta file
  type: File
  inputBinding:
    prefix: -a
- id: in_output_directory
  doc: output directory
  type: Directory
  inputBinding:
    prefix: -o
- id: in_number_of_threads
  doc: number of threads
  type: long
  inputBinding:
    prefix: -t
- id: in_subs_amble
  doc: INT     Number of contigs to run blobology on. Subsampling is randomized. (default=ALL)
  type: boolean
  inputBinding:
    prefix: --subsamble
- id: in_bins
  doc: STR     Folder containing bins. Contig names must match those of the assembly
    file. (default=None)
  type: boolean
  inputBinding:
    prefix: --bins
- id: in_reads_a_one_dot_fast_q
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_reads_a_two_dot_fast_q
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_reads_b_two_dot_fast_q
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- metaWRAP
- blobology
