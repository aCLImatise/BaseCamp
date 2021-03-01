class: CommandLineTool
id: mtsv_readprep.cwl
inputs:
- id: in_lcd
  doc: "Enable LCD trim mode (takes first N bases of each read, where N = shortest\
    \ read length in FASTQ\nfiles)."
  type: boolean?
  inputBinding:
    prefix: --lcd
- id: in_lcd_qual
  doc: "Enable LCDQ trim mode (takes highest quality N bases of each read, where N\
    \ = shortest read length\nin FASTQ files)."
  type: boolean?
  inputBinding:
    prefix: --lcdqual
- id: in_include_flag_trigger
  doc: Include this flag to trigger debug-level logging.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_adapters
  doc: Path to file containing adapters, one per line.
  type: File?
  inputBinding:
    prefix: --adapters
- id: in_adapter_tolerance
  doc: Number of adapter characters to tolerate at start of reads.
  type: long?
  inputBinding:
    prefix: --adapter-tolerance
- id: in_out
  doc: Path to desired output FASTA file.
  type: File?
  inputBinding:
    prefix: --out
- id: in_threads
  doc: 'Number of worker threads to spawn. [default: 4]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_quality_min
  doc: Minimum FASTQ quality to tolerate per base.
  type: long?
  inputBinding:
    prefix: --quality_min
- id: in_quality_threshold
  doc: Maximum number of bases below minimum quality to tolerate per read.
  type: long?
  inputBinding:
    prefix: --quality_threshold
- id: in_segment
  doc: Enable SEG trim mode (takes subsequent N length subsequences of each read).
  type: long?
  inputBinding:
    prefix: --segment
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Path to desired output FASTA file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- mtsv-readprep
