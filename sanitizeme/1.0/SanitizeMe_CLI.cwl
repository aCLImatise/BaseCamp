class: CommandLineTool
id: SanitizeMe_CLI.py.cwl
inputs:
- id: input_folder
  doc: Folder containing fastq files. Only files ending in .fq, .fg.gz, .fastq, and
    .fastq.gz will be processed
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
  doc: Number of threads. Default is 4. More is faster if your computer supports it
  type: string
  inputBinding:
    prefix: --threads
- id: nano_pore
  doc: Select if you used Nanopore Sequencing
  type: boolean
  inputBinding:
    prefix: --Nanopore
- id: pac_bio
  doc: Select if you used PacBio Genonmic Reads
  type: boolean
  inputBinding:
    prefix: --PacBio
- id: pac_bio_ccs
  doc: Select if you used PacBio CCS Genomic Reads
  type: boolean
  inputBinding:
    prefix: --PacBioCCS
- id: short_read
  doc: Select if you have single end short reads (Illumina)
  type: boolean
  inputBinding:
    prefix: --ShortRead
outputs: []
cwlVersion: v1.1
baseCommand:
- SanitizeMe_CLI.py
