class: CommandLineTool
id: pyfastx_split.cwl
inputs:
- id: in_split_fastaq_file_new
  doc: split a fasta/q file into N new files with even size
  type: long?
  inputBinding:
    prefix: -n
- id: in_split_fastaq_file_containingthe
  doc: "split a fasta/q file into multiple files containing\nthe same sequence counts"
  type: long?
  inputBinding:
    prefix: -c
- id: in_out_dir
  doc: "output directory, default is current folder\n"
  type: Directory?
  inputBinding:
    prefix: --out-dir
- id: in_fast_x
  doc: fasta or fastq file, gzip support
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: "output directory, default is current folder\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyfastx:0.8.2--py36h955c1b8_0
cwlVersion: v1.1
baseCommand:
- pyfastx
- split
