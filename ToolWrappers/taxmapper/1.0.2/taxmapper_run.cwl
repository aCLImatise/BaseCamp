class: CommandLineTool
id: taxmapper_run.cwl
inputs:
- id: in_database
  doc: Database path for RAPseach database index
  type: File?
  inputBinding:
    prefix: --database
- id: in_folder
  doc: Folder with reads in fasta or fastq format
  type: Directory?
  inputBinding:
    prefix: --folder
- id: in_reverse
  doc: 'Reads also contain reverse read, [default: True]'
  type: string?
  inputBinding:
    prefix: --reverse
- id: in_suffix
  doc: 'Suffix of paired end reads, [default: "_R1,_R2"]'
  type: long?
  inputBinding:
    prefix: --suffix
- id: in_maximum_read_length
  doc: Maximum read length
  type: long?
  inputBinding:
    prefix: -m
- id: in_out
  doc: 'Output folder, [default: "results"]'
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_threads
  doc: "Number of threads, [default: 4]\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Output folder, [default: "results"]'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- taxmapper
- run
