class: CommandLineTool
id: mtsv_readprep.cwl
inputs:
- id: lcd
  doc: Enable LCD trim mode (takes first N bases of each read, where N = shortest
    read length in FASTQ files).
  type: boolean
  inputBinding:
    prefix: --lcd
- id: lcd_qual
  doc: Enable LCDQ trim mode (takes highest quality N bases of each read, where N
    = shortest read length in FASTQ files).
  type: boolean
  inputBinding:
    prefix: --lcdqual
- id: v
  doc: Include this flag to trigger debug-level logging.
  type: boolean
  inputBinding:
    prefix: -v
- id: adapters
  doc: Path to file containing adapters, one per line.
  type: string
  inputBinding:
    prefix: --adapters
- id: adapter_tolerance
  doc: Number of adapter characters to tolerate at start of reads.
  type: string
  inputBinding:
    prefix: --adapter-tolerance
- id: out
  doc: Path to desired output FASTA file.
  type: string
  inputBinding:
    prefix: --out
- id: threads
  doc: 'Number of worker threads to spawn. [default: 4]'
  type: string
  inputBinding:
    prefix: --threads
- id: quality_min
  doc: Minimum FASTQ quality to tolerate per base.
  type: string
  inputBinding:
    prefix: --quality_min
- id: quality_threshold
  doc: Maximum number of bases below minimum quality to tolerate per read.
  type: string
  inputBinding:
    prefix: --quality_threshold
- id: segment
  doc: Enable SEG trim mode (takes subsequent N length subsequences of each read).
  type: string
  inputBinding:
    prefix: --segment
outputs: []
cwlVersion: v1.1
baseCommand:
- mtsv-readprep
