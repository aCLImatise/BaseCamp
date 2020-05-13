class: CommandLineTool
id: sra2illumina.py.cwl
inputs:
- id: input_1
  doc: The input FASTQ file downloaded from SRA.
  type: string
  inputBinding:
    prefix: --input_1
- id: input_2
  doc: The input FASTQ file downloaded from SRA.
  type: string
  inputBinding:
    prefix: --input_2
- id: output_1
  doc: The output FASTQ file in Illumina format.
  type: string
  inputBinding:
    prefix: --output_1
- id: output_2
  doc: The output FASTQ file in Illumina format.
  type: string
  inputBinding:
    prefix: --output_2
- id: tag_read_name
  doc: This tag is added to the beginning of each read name in order to make them
    unique in case that multiple FASTQ files need to be merged.
  type: string
  inputBinding:
    prefix: --tag_read_name
- id: phred64
  doc: If it is used then the PHRED-33 qualities from the input SRA are converted
    to PHRED-64 qualities.
  type: boolean
  inputBinding:
    prefix: --phred64
- id: phred33
  doc: If it is used then the PHRED-64 qualities from the input SRA are converted
    to PHRED-33 qualities.
  type: boolean
  inputBinding:
    prefix: --phred33
- id: no12
  doc: By default to all reads /1 and /2 will be added to the reads ids. By using
    this no adding is done.
  type: boolean
  inputBinding:
    prefix: --no12
- id: tmp_dir
  doc: The directory which should be used as temporary directory. By default is the
    OS temporary directory.
  type: string
  inputBinding:
    prefix: --tmp_dir
- id: link
  doc: "If it is set to 'change' always the reads names from the input files are changed\
    \ and no actual checking is done to see if it is indeed a FASTQ file containing\
    \ a SRA-like reads names. For 'soft', 'hard', and 'copy' a checking is done to\
    \ see if the reads names look like SRA names and if yes then their names will\
    \ be changed to new ones. In this case it creates a link from the output file\
    \ to the input file of type (soft,hard,copy,change) in case that no operation\
    \ is done on the input file. The choices are: soft,hard,copy,change. Default is\
    \ 'change'."
  type: string
  inputBinding:
    prefix: --link
outputs: []
cwlVersion: v1.1
baseCommand:
- sra2illumina.py
