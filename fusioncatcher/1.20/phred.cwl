#!/usr/bin/env cwl-runner

baseCommand:
- phred.py
class: CommandLineTool
cwlVersion: v1.0
id: phred.py
inputs:
- doc: The input file in FASTQ format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: 'Type quality encoding used in the FASTQ input file. The choices are: [sanger,solexa,illumina,auto-detect]'
  id: input_type
  inputBinding:
    prefix: --input_type
  type: string
- doc: The output FASTQ file.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: 'Type quality encoding used in the FASTQ output file. The choices are: [sanger,solexa,illumina,illumina-1.5]'
  id: output_type
  inputBinding:
    prefix: --output_type
  type: string
- doc: The directory which should be used as temporary directory. By default is the
    OS temporary directory.
  id: tmp_dir
  inputBinding:
    prefix: --tmp_dir
  type: string
- doc: It creates a link from the output file to the input file of type (soft,hard,copy)
    in case that no operation is done on the input file. Default is 'soft'.
  id: link
  inputBinding:
    prefix: --link
  type: string
