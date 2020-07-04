class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/repair.cwl
inputs:
- id: name_input_file
  doc: Name of input file. BAM format by default.
  type: string
  inputBinding:
    prefix: -i
- id: name_output_file
  doc: Name of output file. The output file is in BAM format.
  type: string
  inputBinding:
    prefix: -o
- id: input_file_sam
  doc: The input file is in SAM format.
  type: boolean
  inputBinding:
    prefix: -S
- id: compress_output_bam
  doc: Compress the output BAM file. This will reduce the size of BAM file, but will
    increase the time of retrieving reads from BAM file.
  type: boolean
  inputBinding:
    prefix: -c
- id: number_cpu_threads
  doc: Number of CPU threads. 8 by default.
  type: long
  inputBinding:
    prefix: -T
- id: add_dummy_reads
  doc: Do not add dummy reads for singleton reads.
  type: boolean
  inputBinding:
    prefix: -d
- id: include_sequences_quality
  doc: Do not include sequences and quality scores of reads in the output file.
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- repair
