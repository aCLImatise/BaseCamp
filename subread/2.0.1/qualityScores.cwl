class: CommandLineTool
id: ../../../qualityScores.cwl
inputs:
- id: name_input_including
  doc: Name of input file including read data. The default format is Fastq.
  type: string
  inputBinding:
    prefix: -i
- id: name_output_file
  doc: Name of output file that is a text file including Phred scores for each read
    base.
  type: string
  inputBinding:
    prefix: -o
- id: phred_offset
  doc: refer to subread aligner.
  type: string
  inputBinding:
    prefix: --phred-offset
outputs: []
cwlVersion: v1.1
baseCommand:
- qualityScores
