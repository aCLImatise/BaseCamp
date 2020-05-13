class: CommandLineTool
id: fast5_subset.cwl
inputs:
- id: tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: extracting
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: multi_read_fast5_file
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: by
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: read_id
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: input
  doc: Path to Fast5 file or directory of Fast5 files
  type: string
  inputBinding:
    prefix: --input
- id: save_path
  doc: Folder to output MultiRead subset to
  type: string
  inputBinding:
    prefix: --save_path
- id: read_id_list
  doc: File containing list of read ids to extract (or sequencing_summary.txt file)
  type: string
  inputBinding:
    prefix: --read_id_list
- id: filename_base
  doc: Root of output filename, default='batch' -> 'batch_0.fast5'
  type: File
  inputBinding:
    prefix: --filename_base
- id: batch_size
  doc: Number of reads per multi-read file
  type: string
  inputBinding:
    prefix: --batch_size
- id: threads
  doc: Maximum number of threads to use
  type: string
  inputBinding:
    prefix: --threads
- id: recursive
  doc: Search recursively through folders for MultiRead fast5 files
  type: boolean
  inputBinding:
    prefix: --recursive
- id: ignore_symlinks
  doc: Ignore symlinks when searching recursively for fast5 files
  type: boolean
  inputBinding:
    prefix: --ignore_symlinks
- id: file_list
  doc: File containing names of files to search in
  type: File
  inputBinding:
    prefix: --file_list
outputs: []
cwlVersion: v1.1
baseCommand:
- fast5_subset
