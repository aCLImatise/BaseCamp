class: CommandLineTool
id: SanitizeMePaired_CLI.py.cwl
inputs:
- id: in_input_folder
  doc: "Folder containing paired fq, fq.gz, fastq, and\nfastq.gz files. Program will\
    \ recursively find paired\nreads"
  type: Directory?
  inputBinding:
    prefix: --InputFolder
- id: in_reference
  doc: Host Reference fasta or fasta.gz file
  type: File?
  inputBinding:
    prefix: --Reference
- id: in_output_folder
  doc: "Output Folder. Default is\n~/dehost_output/dehost_2020-09-09"
  type: Directory?
  inputBinding:
    prefix: --OutputFolder
- id: in_large_reference
  doc: "Use this option if your reference file is greater than\n4 Gigabases"
  type: boolean?
  inputBinding:
    prefix: --LargeReference
- id: in_threads
  doc: "Number of threads. More is faster if your computer\nsupports it\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Output Folder. Default is\n~/dehost_output/dehost_2020-09-09"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
hints: []
cwlVersion: v1.1
baseCommand:
- SanitizeMePaired_CLI.py
