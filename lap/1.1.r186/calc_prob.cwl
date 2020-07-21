class: CommandLineTool
id: ../../../calc_prob.py.cwl
inputs:
- id: input
  doc: filename for input reads separated by commas. Must enter a fasta OR fastq filename.
  type: boolean
  inputBinding:
    prefix: --input
- id: fast_q
  doc: if set, input reads are fastq format (fasta by default).
  type: boolean
  inputBinding:
    prefix: --fastq
- id: fastq_filenames_first
  doc: Fastq filenames separated by commas that contain the first mates.
  type: boolean
  inputBinding:
    prefix: --1
- id: fastq_filenames_second
  doc: Fastq filenames separated by commas that contain the second mates
  type: boolean
  inputBinding:
    prefix: --2
- id: mini_ns
  doc: Min insert sizes for mate pairs separated by commas.
  type: boolean
  inputBinding:
    prefix: --minins
- id: max_ins
  doc: Max insert sizes for mate pairs separated by commas.
  type: boolean
  inputBinding:
    prefix: --maxins
- id: orientations
  doc: Orientation of the mates.
  type: boolean
  inputBinding:
    prefix: --orientations
- id: bowtie_two_index
  doc: name of bowtie index for the assembly.
  type: boolean
  inputBinding:
    prefix: --bowtie2_index
- id: threads
  doc: number of threads to use for bowtie.
  type: boolean
  inputBinding:
    prefix: --threads
- id: assembly_fast_a
  doc: name of the fasta file of the assembly. Used to calculate the length of the
    assembly.
  type: boolean
  inputBinding:
    prefix: --assembly_fasta
- id: input_sam_files
  doc: 'name of the SAM files for the corresponding reads.             '
  type: boolean
  inputBinding:
    prefix: --input_sam_files
- id: output_sam_file
  doc: write bowtie SAM output to files starting with this prefix.
  type: boolean
  inputBinding:
    prefix: --output_sam_file
- id: mu
  doc: average mate pair insert sizes.
  type: boolean
  inputBinding:
    prefix: --mu
- id: sigma
  doc: standard deviation of mate pair insert sizes.
  type: boolean
  inputBinding:
    prefix: --sigma
- id: max_alignments
  doc: bowtie2 parameter to set the max number of alignments.
  type: boolean
  inputBinding:
    prefix: --max_alignments
- id: debug_level
  doc: determines how much debug output.
  type: boolean
  inputBinding:
    prefix: --debug_level
outputs: []
cwlVersion: v1.1
baseCommand:
- calc_prob.py
