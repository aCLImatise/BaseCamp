class: CommandLineTool
id: Aquila_clean.cwl
inputs:
- id: in_assembly_dir
  doc: assembly folder
  type: Directory
  inputBinding:
    prefix: --assembly_dir
- id: in_chr_start
  doc: chromosome start from
  type: string
  inputBinding:
    prefix: --chr_start
- id: in_chr_end
  doc: chromosome end by
  type: string
  inputBinding:
    prefix: --chr_end
- id: in_num_of_threads
  doc: "number of threads\n"
  type: long
  inputBinding:
    prefix: --num_of_threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Aquila_clean
