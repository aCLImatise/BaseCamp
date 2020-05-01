#!/usr/bin/env cwl-runner

baseCommand:
- Lace.py
class: CommandLineTool
cwlVersion: v1.0
id: lace.py
inputs:
- doc: The name of the fasta file containing all transcripts
  id: genome_file
  inputBinding:
    position: 0
  type: string
- doc: The name of the text file with the transcript to cluster mapping
  id: cluster_file
  inputBinding:
    position: 1
  type: string
- doc: The number of cores you wish to run the job on (default = 1)
  id: cores
  inputBinding:
    prefix: --cores
  type: string
- doc: Create alternate annotations and create metrics on success of SuperTranscript
    Building
  id: alternate
  inputBinding:
    prefix: --alternate
  type: boolean
- doc: 'Move intermediate fasta files into folder: SuperFiles after running'
  id: tidy
  inputBinding:
    prefix: --tidy
  type: boolean
- doc: Set a maximum for the number of transcripts from a cluster to be included for
    building the SuperTranscript (default=50).
  id: max_tran
  inputBinding:
    prefix: --maxTran
  type: long
- doc: Output Directory
  id: output_dir
  inputBinding:
    prefix: --outputDir
  type: string
