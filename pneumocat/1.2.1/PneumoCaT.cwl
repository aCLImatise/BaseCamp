class: CommandLineTool
id: PneumoCaT.py.cwl
inputs:
- id: input_directory
  doc: please provide the path to the directory contains the fastq files [REQUIRED
    - OPTION 1]
  type: string
  inputBinding:
    prefix: --input_directory
- id: fast_q_1
  doc: ', -1 FASTQ_1 Fastq file pair 1 [REQUIRED - OPTION 2]'
  type: string
  inputBinding:
    prefix: --fastq_1
- id: fast_q_2
  doc: ', -2 FASTQ_2 Fastq file pair 2 [REQUIRED - OPTION 2]'
  type: string
  inputBinding:
    prefix: --fastq_2
- id: variant_database
  doc: variant database [OPTIONAL]; defaults to streptococcus-pneumoniae-ctvdb in
    the github directory
  type: string
  inputBinding:
    prefix: --variant_database
- id: output_dir
  doc: please provide an output directory [OPTIONAL]; if none provided a pneumo_capsular_typing
    folder will be created in the directory containing the fastq files
  type: string
  inputBinding:
    prefix: --output_dir
- id: threads
  doc: number of threads to use [OPTIONAL]; default=4
  type: string
  inputBinding:
    prefix: --threads
- id: bowtie
  doc: please provide the path for bowtie2 [OPTIONAL]; defaults to bowtie2
  type: string
  inputBinding:
    prefix: --bowtie
- id: sam_tools
  doc: please provide the path for samtools [OPTIONAL]; defaults to samtools
  type: string
  inputBinding:
    prefix: --samtools
- id: cleanup
  doc: if used, all bam files generated will be removed upon completion
  type: boolean
  inputBinding:
    prefix: --cleanup
outputs: []
cwlVersion: v1.1
baseCommand:
- PneumoCaT.py
