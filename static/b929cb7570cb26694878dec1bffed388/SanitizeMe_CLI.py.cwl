class: CommandLineTool
id: SanitizeMe_CLI.py.cwl
inputs:
- id: in_input_folder
  doc: "Folder containing fastq files. Only files ending in\n.fq, .fg.gz, .fastq,\
    \ and .fastq.gz will be processed"
  type: Directory
  inputBinding:
    prefix: --InputFolder
- id: in_reference
  doc: Host Reference fasta or fasta.gz file
  type: File
  inputBinding:
    prefix: --Reference
- id: in_output_folder
  doc: "Output Folder. Default is\n~/dehost_output/dehost_2020-09-09"
  type: Directory
  inputBinding:
    prefix: --OutputFolder
- id: in_large_reference
  doc: "Use this option if your reference file is greater than\n4 Gigabases"
  type: boolean
  inputBinding:
    prefix: --LargeReference
- id: in_threads
  doc: "Number of threads. Default is 4. More is faster if\nyour computer supports\
    \ it"
  type: long
  inputBinding:
    prefix: --threads
- id: in_nano_pore
  doc: Select if you used Nanopore Sequencing
  type: boolean
  inputBinding:
    prefix: --Nanopore
- id: in_pac_bio
  doc: Select if you used PacBio Genonmic Reads
  type: boolean
  inputBinding:
    prefix: --PacBio
- id: in_pac_bio_ccs
  doc: Select if you used PacBio CCS Genomic Reads
  type: boolean
  inputBinding:
    prefix: --PacBioCCS
- id: in_short_read
  doc: Select if you have single end short reads (Illumina)
  type: boolean
  inputBinding:
    prefix: --ShortRead
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Output Folder. Default is\n~/dehost_output/dehost_2020-09-09"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_folder)
cwlVersion: v1.1
baseCommand:
- SanitizeMe_CLI.py
