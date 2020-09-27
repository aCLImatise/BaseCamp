class: CommandLineTool
id: kmer_analysis.pl.cwl
inputs:
- id: in_file_for_processing
  doc: File for processing
  type: boolean
  inputBinding:
    prefix: -f
- id: in_working_directory
  doc: Working directory
  type: boolean
  inputBinding:
    prefix: -d
- id: in_output_directory
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: -o
- id: in_kmer_length_search
  doc: Kmer length to search
  type: boolean
  inputBinding:
    prefix: -k
- id: in_file_type_can
  doc: File type, can either be fasta or fastq
  type: boolean
  inputBinding:
    prefix: -t
- id: in_man
  doc: "Prints the manual page and exits\n"
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- kmer_analysis.pl
