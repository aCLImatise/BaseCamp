class: CommandLineTool
id: calc_prob.py.cwl
inputs:
- id: in_input
  doc: "filename for input reads separated by commas. Must enter\na fasta OR fastq\
    \ filename."
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_fast_q
  doc: if set, input reads are fastq format (fasta by default).
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_fastq_filenames_separated
  doc: Fastq filenames separated by commas that contain the first
  type: boolean?
  inputBinding:
    prefix: --1
- id: in_max_ins
  doc: Max insert sizes for mate pairs separated by commas.
  type: boolean?
  inputBinding:
    prefix: --maxins
- id: in_orientations
  doc: Orientation of the mates.
  type: boolean?
  inputBinding:
    prefix: --orientations
- id: in_bowtie_two_index
  doc: name of bowtie index for the assembly.
  type: boolean?
  inputBinding:
    prefix: --bowtie2_index
- id: in_threads
  doc: number of threads to use for bowtie.
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_assembly_fast_a
  doc: "name of the fasta file of the assembly. Used to\ncalculate the length of the\
    \ assembly."
  type: boolean?
  inputBinding:
    prefix: --assembly_fasta
- id: in_input_sam_files
  doc: name of the SAM files for the corresponding reads.
  type: boolean?
  inputBinding:
    prefix: --input_sam_files
- id: in_output_sam_file
  doc: write bowtie SAM output to files starting with this prefix.
  type: boolean?
  inputBinding:
    prefix: --output_sam_file
- id: in_mu
  doc: average mate pair insert sizes.
  type: boolean?
  inputBinding:
    prefix: --mu
- id: in_sigma
  doc: standard deviation of mate pair insert sizes.
  type: boolean?
  inputBinding:
    prefix: --sigma
- id: in_max_alignments
  doc: bowtie2 parameter to set the max number of alignments.
  type: boolean?
  inputBinding:
    prefix: --max_alignments
- id: in_debug_level
  doc: determines how much debug output.
  type: boolean?
  inputBinding:
    prefix: --debug_level
- id: in_mates_dot
  doc: -2  --2                     Fastq filenames separated by commas that contain
    the second
  type: string
  inputBinding:
    position: 0
- id: in_mates
  doc: -i  --minins                Min insert sizes for mate pairs separated by commas.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- calc_prob.py
