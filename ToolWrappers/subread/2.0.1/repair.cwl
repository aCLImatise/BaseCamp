class: CommandLineTool
id: repair.cwl
inputs:
- id: in_name_input_file
  doc: Name of input file. BAM format by default.
  type: File?
  inputBinding:
    prefix: -i
- id: in_name_output_file
  doc: Name of output file. The output file is in BAM format.
  type: File?
  inputBinding:
    prefix: -o
- id: in_input_file_sam
  doc: The input file is in SAM format.
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_compress_bam_file
  doc: "Compress the output BAM file. This will reduce the size of BAM\nfile, but\
    \ will increase the time of retrieving reads from BAM\nfile."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_number_cpu_threads
  doc: Number of CPU threads. 8 by default.
  type: long?
  inputBinding:
    prefix: -T
- id: in_add_dummy_reads
  doc: Do not add dummy reads for singleton reads.
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_include_sequences_scores
  doc: "Do not include sequences and quality scores of reads in the\noutput file.\n"
  type: File?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of output file. The output file is in BAM format.
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
- id: out_include_sequences_scores
  doc: "Do not include sequences and quality scores of reads in the\noutput file.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_include_sequences_scores)
hints: []
cwlVersion: v1.1
baseCommand:
- repair
