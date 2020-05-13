class: CommandLineTool
id: QCumber_2.cwl
inputs:
- id: threads
  doc: 'Number of threads. Default: 4'
  type: string
  inputBinding:
    prefix: --threads
- id: config
  doc: Configfile to run pipeline. Additional parameters in the commandline will override
    arguments in configfile.
  type: string
  inputBinding:
    prefix: --config
- id: input
  doc: input sample folder. Illumina filenames should end with _<lane>_<R1|R2>_number,
    e.g. Sample_12_345_R1_001.fastq, to find the right paired set.
  type: string[]
  inputBinding:
    prefix: --input
- id: read_1
  doc: ', -1 R1     Read 1 file'
  type: string
  inputBinding:
    prefix: --read1
- id: read_2
  doc: ', -2 R2     Read 2 file'
  type: string
  inputBinding:
    prefix: --read2
- id: technology
  doc: If not set, automatically determine technology and search for fastq and bam
    files. Set technology to IonTorrent if all files are bam-files, else set technology
    to Illumina.
  type: string
  inputBinding:
    prefix: --technology
- id: adapter
  doc: 'Adapter name for trimming. Default: all'
  type: string
  inputBinding:
    prefix: --adapter
- id: reference
  doc: Map reads against reference. Reference needs to be in fasta-format.
  type: string
  inputBinding:
    prefix: --reference
- id: index
  doc: Bowtie2 index if available.
  type: string
  inputBinding:
    prefix: --index
- id: kraken_db
  doc: 'Custom Kraken database. Default value is taken from environment variable KRAKEN_DB_PATH.
    Default: .'
  type: string
  inputBinding:
    prefix: --kraken_db
- id: illumina_clip
  doc: 'Illuminaclip option: <leading quality>:<trailing quality>:<sliding window>.
    Default: 2:30:10'
  type: string
  inputBinding:
    prefix: --illuminaclip
- id: min_len
  doc: 'Minlen parameter for Trimmomatic. Drops read short than minlen. Default: 50'
  type: long
  inputBinding:
    prefix: --minlen
- id: trim_option
  doc: 'Additional Trimmomatic input. Default (if trimBetter is not set): SLIDINGWINDOW:4:20'
  type: string
  inputBinding:
    prefix: --trimOption
- id: trim_better_threshold
  doc: 'Set -trimBetter to use this option.Default setting for Illumina: 0.15 and
    for IonTorrent: 0.25.'
  type: string
  inputBinding:
    prefix: --trimBetter_threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- QCumber-2
