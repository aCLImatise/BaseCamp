class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gen_rand_samp.py.cwl
inputs:
- id: fastq_filenames_first
  doc: Fastq filenames separated by commas that contain the first mates.
  type: boolean
  inputBinding:
    prefix: --1
- id: fastq_filenames_second
  doc: Fastq filenames separated by commas that contain the second mates.
  type: boolean
  inputBinding:
    prefix: --2
- id: samples
  doc: Number of samples
  type: boolean
  inputBinding:
    prefix: --samples
- id: output_dir
  doc: Base output directory.
  type: boolean
  inputBinding:
    prefix: --output_dir
- id: debug_level
  doc: determines how much debug output.
  type: boolean
  inputBinding:
    prefix: --debug_level
outputs: []
cwlVersion: v1.1
baseCommand:
- gen_rand_samp.py
