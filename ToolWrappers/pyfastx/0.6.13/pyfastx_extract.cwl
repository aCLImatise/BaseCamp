class: CommandLineTool
id: pyfastx_extract.cwl
inputs:
- id: in_list_file
  doc: "a file containing sequence or read names, one name per\nline"
  type: File
  inputBinding:
    prefix: --list-file
- id: in_reverse_complement
  doc: output reverse complement sequence
  type: boolean
  inputBinding:
    prefix: --reverse-complement
- id: in_out_fast_a
  doc: "output fasta format when extract reads from fastq,\ndefault output fastq format"
  type: boolean
  inputBinding:
    prefix: --out-fasta
- id: in_out_file
  doc: 'output file, default: output to stdout'
  type: File
  inputBinding:
    prefix: --out-file
- id: in_sequential_read
  doc: "start sequential reading, particularly suitable for\nextracting large numbers\
    \ of sequences\n"
  type: boolean
  inputBinding:
    prefix: --sequential-read
- id: in_fast_x
  doc: fasta or fastq file, gzip support
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: "sequence name or read name, multiple names were\nseparated by space"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: 'output file, default: output to stdout'
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- pyfastx
- extract
