class: CommandLineTool
id: kounta.cwl
inputs:
- id: in_fof_n
  doc: file     File of filenames to process
  type: boolean?
  inputBinding:
    prefix: --fofn
- id: in_km_er
  doc: int      k-mer length [25]
  type: boolean?
  inputBinding:
    prefix: --kmer
- id: in_min_freq
  doc: int      Min k-mer frequency (FASTQ only) [3]
  type: boolean?
  inputBinding:
    prefix: --minfreq
- id: in_out
  doc: file     Output matrix file
  type: File?
  inputBinding:
    prefix: --out
- id: in_ram
  doc: int      RAM in gigabytes to use [4]
  type: boolean?
  inputBinding:
    prefix: --ram
- id: in_tempdir
  doc: string   Fast working directory [auto]
  type: boolean?
  inputBinding:
    prefix: --tempdir
- id: in_threads
  doc: int      Threads to use [1]
  type: boolean?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: file     Output matrix file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- kounta
