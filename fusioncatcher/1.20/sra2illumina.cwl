#!/usr/bin/env cwl-runner

baseCommand:
- sra2illumina.py
class: CommandLineTool
cwlVersion: v1.0
id: sra2illumina.py
inputs:
- doc: The input FASTQ file downloaded from SRA.
  id: input_1
  inputBinding:
    prefix: --input_1
  type: string
- doc: The input FASTQ file downloaded from SRA.
  id: input_2
  inputBinding:
    prefix: --input_2
  type: string
- doc: The output FASTQ file in Illumina format.
  id: output_1
  inputBinding:
    prefix: --output_1
  type: string
- doc: The output FASTQ file in Illumina format.
  id: output_2
  inputBinding:
    prefix: --output_2
  type: string
- doc: This tag is added to the beginning of each read name in order to make them
    unique in case that multiple FASTQ files need to be merged.
  id: tag_read_name
  inputBinding:
    prefix: --tag_read_name
  type: string
- doc: If it is used then the PHRED-33 qualities from the input SRA are converted
    to PHRED-64 qualities.
  id: phred64
  inputBinding:
    prefix: --phred64
  type: boolean
- doc: If it is used then the PHRED-64 qualities from the input SRA are converted
    to PHRED-33 qualities.
  id: phred33
  inputBinding:
    prefix: --phred33
  type: boolean
- doc: By default to all reads /1 and /2 will be added to the reads ids. By using
    this no adding is done.
  id: no12
  inputBinding:
    prefix: --no12
  type: boolean
- doc: The directory which should be used as temporary directory. By default is the
    OS temporary directory.
  id: tmp_dir
  inputBinding:
    prefix: --tmp_dir
  type: string
- doc: "If it is set to 'change' always the reads names from the input files are changed\
    \ and no actual checking is done to see if it is indeed a FASTQ file containing\
    \ a SRA-like reads names. For 'soft', 'hard', and 'copy' a checking is done to\
    \ see if the reads names look like SRA names and if yes then their names will\
    \ be changed to new ones. In this case it creates a link from the output file\
    \ to the input file of type (soft,hard,copy,change) in case that no operation\
    \ is done on the input file. The choices are: soft,hard,copy,change. Default is\
    \ 'change'."
  id: link
  inputBinding:
    prefix: --link
  type: string
