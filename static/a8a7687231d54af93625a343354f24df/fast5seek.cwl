class: CommandLineTool
id: fast5seek.cwl
inputs:
- id: in_fast_five_dir
  doc: "Directory of fast5 files you want to query. Program\nwill walk recursively\
    \ through subdirectories."
  type: long[]
  inputBinding:
    prefix: --fast5_dir
- id: in_reference
  doc: Fastq or BAM/SAM file(s).
  type: string[]
  inputBinding:
    prefix: --reference
- id: in_output
  doc: "Filename to write fast5 paths to. If nothing is\nentered, it will write the\
    \ paths to STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_mapped
  doc: Only extract read ids for mapped reads in BAM/SAM
  type: boolean?
  inputBinding:
    prefix: --mapped
- id: in_no_progress_bar
  doc: Do not display progress bar.
  type: boolean?
  inputBinding:
    prefix: --no_progress_bar
- id: in_log_level
  doc: ''
  type: string?
  inputBinding:
    prefix: --log_level
- id: in_files_dot
  doc: --log_level {0,1,2,3,4,5}
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fast5seek
