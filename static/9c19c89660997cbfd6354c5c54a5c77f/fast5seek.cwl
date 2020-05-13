class: CommandLineTool
id: fast5seek.cwl
inputs:
- id: fast5_dir
  doc: Directory of fast5 files you want to query. Program will walk recursively through
    subdirectories.
  type: string[]
  inputBinding:
    prefix: --fast5_dir
- id: reference
  doc: Fastq or BAM/SAM file(s).
  type: string[]
  inputBinding:
    prefix: --reference
- id: output
  doc: Filename to write fast5 paths to. If nothing is entered, it will write the
    paths to STDOUT.
  type: string
  inputBinding:
    prefix: --output
- id: mapped
  doc: Only extract read ids for mapped reads in BAM/SAM files.
  type: boolean
  inputBinding:
    prefix: --mapped
- id: log_level
  doc: '{0,1,2,3,4,5} Level of logging. 0 is none, 5 is for debugging. Default is
    4 which will report info, warnings, errors, and critical information.'
  type: boolean
  inputBinding:
    prefix: --log_level
- id: no_progress_bar
  doc: Do not display progress bar.
  type: boolean
  inputBinding:
    prefix: --no_progress_bar
outputs: []
cwlVersion: v1.1
baseCommand:
- fast5seek
