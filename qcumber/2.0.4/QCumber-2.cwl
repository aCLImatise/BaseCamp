#!/usr/bin/env cwl-runner

baseCommand:
- QCumber-2
class: CommandLineTool
cwlVersion: v1.0
id: qcumber-2
inputs:
- doc: 'Number of threads. Default: 4'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Configfile to run pipeline. Additional parameters in the commandline will override
    arguments in configfile.
  id: config
  inputBinding:
    prefix: --config
  type: string
- doc: input sample folder. Illumina filenames should end with _<lane>_<R1|R2>_number,
    e.g. Sample_12_345_R1_001.fastq, to find the right paired set.
  id: input
  inputBinding:
    prefix: --input
  type:
    items: string
    type: array
- doc: ', -1 R1     Read 1 file'
  id: read_1
  inputBinding:
    prefix: --read1
  type: string
- doc: ', -2 R2     Read 2 file'
  id: read_2
  inputBinding:
    prefix: --read2
  type: string
- doc: If not set, automatically determine technology and search for fastq and bam
    files. Set technology to IonTorrent if all files are bam-files, else set technology
    to Illumina.
  id: technology
  inputBinding:
    prefix: --technology
  type: string
- doc: 'Adapter name for trimming. Default: all'
  id: adapter
  inputBinding:
    prefix: --adapter
  type: string
- doc: Map reads against reference. Reference needs to be in fasta-format.
  id: reference
  inputBinding:
    prefix: --reference
  type: string
- doc: Bowtie2 index if available.
  id: index
  inputBinding:
    prefix: --index
  type: string
- doc: 'Custom Kraken database. Default value is taken from environment variable KRAKEN_DB_PATH.
    Default: .'
  id: kraken_db
  inputBinding:
    prefix: --kraken_db
  type: string
- doc: 'Illuminaclip option: <leading quality>:<trailing quality>:<sliding window>.
    Default: 2:30:10'
  id: illumina_clip
  inputBinding:
    prefix: --illuminaclip
  type: string
- doc: 'Minlen parameter for Trimmomatic. Drops read short than minlen. Default: 50'
  id: min_len
  inputBinding:
    prefix: --minlen
  type: long
- doc: 'Additional Trimmomatic input. Default (if trimBetter is not set): SLIDINGWINDOW:4:20'
  id: trim_option
  inputBinding:
    prefix: --trimOption
  type: string
- doc: 'Set -trimBetter to use this option.Default setting for Illumina: 0.15 and
    for IonTorrent: 0.25.'
  id: trim_better_threshold
  inputBinding:
    prefix: --trimBetter_threshold
  type: string
