class: CommandLineTool
id: fast5_subset.cwl
inputs:
- id: in_input
  doc: Path to Fast5 file or directory of Fast5 files
  type: File?
  inputBinding:
    prefix: --input
- id: in_save_path
  doc: Folder to output MultiRead subset to
  type: Directory?
  inputBinding:
    prefix: --save_path
- id: in_read_id_list
  doc: "File containing list of read ids to extract (or\nsequencing_summary.txt file)"
  type: File?
  inputBinding:
    prefix: --read_id_list
- id: in_filename_base
  doc: "Root of output filename, default='batch' ->\n'batch_0.fast5'"
  type: File?
  inputBinding:
    prefix: --filename_base
- id: in_batch_size
  doc: Number of reads per multi-read file
  type: long?
  inputBinding:
    prefix: --batch_size
- id: in_threads
  doc: Maximum number of threads to use
  type: long?
  inputBinding:
    prefix: --threads
- id: in_recursive
  doc: Search recursively through folders for MultiRead fast5
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_file_list
  doc: "File containing names of files to search in\n"
  type: File?
  inputBinding:
    prefix: --file_list
- id: in_tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_extracting
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_reads
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_multi_read_fast_five_file
  doc: ''
  type: long
  inputBinding:
    position: 6
- id: in_by
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_read_id
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_path
  doc: Folder to output MultiRead subset to
  type: Directory?
  outputBinding:
    glob: $(inputs.in_save_path)
- id: out_filename_base
  doc: "Root of output filename, default='batch' ->\n'batch_0.fast5'"
  type: File?
  outputBinding:
    glob: $(inputs.in_filename_base)
hints: []
cwlVersion: v1.1
baseCommand:
- fast5_subset
