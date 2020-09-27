class: CommandLineTool
id: QCumber_2.cwl
inputs:
- id: in_threads
  doc: 'Number of threads. Default: 4'
  type: long
  inputBinding:
    prefix: --threads
- id: in_config
  doc: "Configfile to run pipeline. Additional parameters in\nthe commandline will\
    \ override arguments in configfile."
  type: string
  inputBinding:
    prefix: --config
- id: in_input
  doc: "input sample folder. Illumina filenames should end\nwith _<lane>_<R1|R2>_number,\
    \ e.g.\nSample_12_345_R1_001.fastq, to find the right paired\nset."
  type: string[]
  inputBinding:
    prefix: --input
- id: in_read_one
  doc: Read 1 file
  type: long
  inputBinding:
    prefix: --read1
- id: in_read_two
  doc: Read 2 file
  type: long
  inputBinding:
    prefix: --read2
- id: in_technology
  doc: "If not set, automatically determine technology and\nsearch for fastq and bam\
    \ files. Set technology to\nIonTorrent if all files are bam-files, else set\n\
    technology to Illumina."
  type: string
  inputBinding:
    prefix: --technology
- id: in_adapter
  doc: 'Adapter name for trimming. Default: all'
  type: string
  inputBinding:
    prefix: --adapter
- id: in_reference
  doc: "Map reads against reference. Reference needs to be in\nfasta-format."
  type: string
  inputBinding:
    prefix: --reference
- id: in_index
  doc: Bowtie2 index if available.
  type: long
  inputBinding:
    prefix: --index
- id: in_kraken_db
  doc: "Custom Kraken database. Default value is taken from\nenvironment variable\
    \ KRAKEN_DB_PATH. Default: ."
  type: string
  inputBinding:
    prefix: --kraken_db
- id: in_sav
  doc: "Illumina folder for SAV. Requires RunInfo.xml,\nRunParameter.xml and Interop\
    \ folder."
  type: Directory
  inputBinding:
    prefix: --sav
- id: in_trim_better
  doc: "Optimize trimming parameter using 'Per sequence base\ncontent' from fastqc.\
    \ Not recommended for amplicons."
  type: string
  inputBinding:
    prefix: --trimBetter
- id: in_no_kraken
  doc: --notrimming, -Q
  type: boolean
  inputBinding:
    prefix: --nokraken
- id: in_illumina_clip
  doc: "Illuminaclip option: <leading quality>:<trailing\nquality>:<sliding window>.\
    \ Default: 2:30:10"
  type: long
  inputBinding:
    prefix: --illuminaclip
- id: in_min_len
  doc: "Minlen parameter for Trimmomatic. Drops read short\nthan minlen. Default:\
    \ 50"
  type: long
  inputBinding:
    prefix: --minlen
- id: in_trim_option
  doc: "Additional Trimmomatic input. Default (if trimBetter\nis not set): SLIDINGWINDOW:4:20"
  type: long
  inputBinding:
    prefix: --trimOption
- id: in_trim_better_threshold
  doc: "Set -trimBetter to use this option.Default setting for\nIllumina: 0.15 and\
    \ for IonTorrent: 0.25."
  type: double
  inputBinding:
    prefix: --trimBetter_threshold
- id: in_output
  doc: "--rename RENAME, -R RENAME\nTSV File with two columns: <old sample name> <new\n\
    sample name>\n--save_mapping, -S"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- QCumber-2
