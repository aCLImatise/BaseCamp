class: CommandLineTool
id: TQSfastq.pl.cwl
inputs:
- id: in_file_corresponding_fastafastq
  doc: "File of filenames corresponding to fasta/fastq files with reads to interrogate\n\
    -q Phred quality score threshold (bases less than -q XX will be clipped, default\
    \ -q 10, optional)\n-n Number of consecutive -q 10 bases (default -n 30, optional)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_ascii_offset_n
  doc: ASCII offset (33=standard 64=illumina, default -n 33, optional)
  type: boolean
  inputBinding:
    prefix: -e
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- TQSfastq.pl
