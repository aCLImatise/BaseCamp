class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/SanitizeMePaired_CLI.py.cwl
inputs:
- id: input_folder
  doc: Folder containing paired fq, fq.gz, fastq, and fastq.gz files. Program will
    recursively find paired reads
  type: string
  inputBinding:
    prefix: --InputFolder
- id: reference
  doc: Host Reference fasta or fasta.gz file
  type: string
  inputBinding:
    prefix: --Reference
- id: output_folder
  doc: Output Folder. Default is ~/dehost_output/dehost_2020-06-23
  type: string
  inputBinding:
    prefix: --OutputFolder
- id: large_reference
  doc: Use this option if your reference file is greater than 4 Gigabases
  type: boolean
  inputBinding:
    prefix: --LargeReference
- id: threads
  doc: Number of threads. More is faster if your computer supports it
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- SanitizeMePaired_CLI.py
