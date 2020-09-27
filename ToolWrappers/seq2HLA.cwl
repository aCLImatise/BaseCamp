class: CommandLineTool
id: seq2HLA.cwl
inputs:
- id: in_one
  doc: 'File name of #1 mates (uncompressed or gzipped fastq)'
  type: long
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: 'File name of #2 mates (uncompressed or gzipped fastq)'
  type: long
  inputBinding:
    prefix: '-2'
- id: in_run_name
  doc: "Name of this HLA typing run. Wil be used throughout\nthis process as part\
    \ of the name of the newly created\nfiles."
  type: string
  inputBinding:
    prefix: --runName
- id: in_threads
  doc: "Bowtie option: Launch <int> parallel search threads.\nDefault (seq2HLA): 6"
  type: long
  inputBinding:
    prefix: --threads
- id: in_trim_three
  doc: "Bowtie option: -3 <int> trims <int> bases from the low\nquality 3' end of\
    \ each read. Default: 0\n"
  type: long
  inputBinding:
    prefix: --trim3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seq2HLA
