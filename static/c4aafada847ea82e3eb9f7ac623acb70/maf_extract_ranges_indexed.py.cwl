class: CommandLineTool
id: maf_extract_ranges_indexed.py.cwl
inputs:
- id: in_min_cols
  doc: "Minimum length (columns) required for alignment to be\noutput"
  type: long?
  inputBinding:
    prefix: --mincols
- id: in_chop
  doc: "Should blocks be chopped to only portion overlapping\n(no by default)"
  type: boolean?
  inputBinding:
    prefix: --chop
- id: in_src
  doc: Use this src for all intervals
  type: string?
  inputBinding:
    prefix: --src
- id: in_prefix
  doc: Prepend this to each src before lookup
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_dir
  doc: Write each interval as a separate file in this
  type: File?
  inputBinding:
    prefix: --dir
- id: in_use_cache
  doc: "Use a cache that keeps blocks of the MAF files in\nmemory (requires ~20MB\
    \ per MAF)\n"
  type: boolean?
  inputBinding:
    prefix: --usecache
- id: in_directory
  doc: -S, --strand          Strand is included as an additional column, and the
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- maf_extract_ranges_indexed.py
