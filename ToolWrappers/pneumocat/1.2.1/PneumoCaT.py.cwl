class: CommandLineTool
id: PneumoCaT.py.cwl
inputs:
- id: in_input_directory
  doc: "please provide the path to the directory contains the\nfastq files [REQUIRED\
    \ - OPTION 1]"
  type: Directory
  inputBinding:
    prefix: --input_directory
- id: in_fast_q_one
  doc: Fastq file pair 1 [REQUIRED - OPTION 2]
  type: long
  inputBinding:
    prefix: --fastq_1
- id: in_fast_q_two
  doc: Fastq file pair 2 [REQUIRED - OPTION 2]
  type: long
  inputBinding:
    prefix: --fastq_2
- id: in_variant_database
  doc: "variant database [OPTIONAL]; defaults to\nstreptococcus-pneumoniae-ctvdb in\
    \ the github directory"
  type: Directory
  inputBinding:
    prefix: --variant_database
- id: in_output_dir
  doc: "please provide an output directory [OPTIONAL]; if none\nprovided a pneumo_capsular_typing\
    \ folder will be\ncreated in the directory containing the fastq files"
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_threads
  doc: number of threads to use [OPTIONAL]; default=4
  type: long
  inputBinding:
    prefix: --threads
- id: in_bowtie
  doc: "please provide the path for bowtie2 [OPTIONAL];\ndefaults to bowtie2"
  type: File
  inputBinding:
    prefix: --bowtie
- id: in_sam_tools
  doc: "please provide the path for samtools [OPTIONAL];\ndefaults to samtools"
  type: File
  inputBinding:
    prefix: --samtools
- id: in_cleanup
  doc: "if used, all bam files generated will be removed upon\ncompletion\n"
  type: boolean
  inputBinding:
    prefix: --cleanup
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "please provide an output directory [OPTIONAL]; if none\nprovided a pneumo_capsular_typing\
    \ folder will be\ncreated in the directory containing the fastq files"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- PneumoCaT.py
