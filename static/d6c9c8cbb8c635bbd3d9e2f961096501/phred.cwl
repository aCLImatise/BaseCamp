class: CommandLineTool
id: phred.py.cwl
inputs:
- id: input
  doc: The input file in FASTQ format.
  type: string
  inputBinding:
    prefix: --input
- id: input_type
  doc: 'Type quality encoding used in the FASTQ input file. The choices are: [sanger,solexa,illumina,auto-detect]'
  type: string
  inputBinding:
    prefix: --input_type
- id: output
  doc: The output FASTQ file.
  type: string
  inputBinding:
    prefix: --output
- id: output_type
  doc: 'Type quality encoding used in the FASTQ output file. The choices are: [sanger,solexa,illumina,illumina-1.5]'
  type: string
  inputBinding:
    prefix: --output_type
- id: tmp_dir
  doc: The directory which should be used as temporary directory. By default is the
    OS temporary directory.
  type: string
  inputBinding:
    prefix: --tmp_dir
- id: link
  doc: It creates a link from the output file to the input file of type (soft,hard,copy)
    in case that no operation is done on the input file. Default is 'soft'.
  type: string
  inputBinding:
    prefix: --link
outputs: []
cwlVersion: v1.1
baseCommand:
- phred.py
