class: CommandLineTool
id: SanitizeMePaired_CLI.py.cwl
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
  doc: Output Folder. Default is ~/dehost_output/test
  type: string
  inputBinding:
    prefix: --OutputFolder
- id: threads
  doc: Number of threads. More is faster if your computer supports it
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- SanitizeMePaired_CLI.py
