class: CommandLineTool
id: _dbifasta.cwl
inputs:
- id: in_id_format
  doc: "menu       [idacc] ID line format (Values: simple\n(>ID); idacc (>ID ACC or\
    \ >ID (ACC)); gcgid\n(>db:ID); gcgidacc (>db:ID ACC); dbid (>db\nID); ncbi (|\
    \ formats))"
  type: boolean?
  inputBinding:
    prefix: -idformat
- id: in_directory
  doc: directory  [.] Database directory
  type: boolean?
  inputBinding:
    prefix: -directory
- id: in_filenames
  doc: "string     [*.dat] Wildcard database filename (Any\nstring)"
  type: boolean?
  inputBinding:
    prefix: -filenames
- id: in_release
  doc: "string     [0.0] Release number (Any string up to 9\ncharacters)"
  type: boolean?
  inputBinding:
    prefix: -release
- id: in_date
  doc: string     [00/00/00] Index date (Date string dd/mm/yy)
  type: boolean?
  inputBinding:
    prefix: -date
- id: in_outfile
  doc: outfile    [*.dbifasta] General log output file
  type: File?
  inputBinding:
    prefix: -outfile
- id: in_fields
  doc: "menu       [acc] Index fields (Values: acc (acnum\naccession number index);\
    \ sv (seqvn sequence\nversion and gi number index); des (des\ndescription index))"
  type: boolean?
  inputBinding:
    prefix: -fields
- id: in_exclude
  doc: string     Wildcard filename(s) to exclude (Any string)
  type: boolean?
  inputBinding:
    prefix: -exclude
- id: in_max_index
  doc: integer    [0] Maximum index length (Integer 0 or more)
  type: boolean?
  inputBinding:
    prefix: -maxindex
- id: in_sort_options
  doc: "string     [-T . -k 1,1] Sort options, typically '-T .'\nto use current directory\
    \ for work files and\n'-k 1,1' to force GNU sort to use the first\nfield (Any\
    \ string)"
  type: boolean?
  inputBinding:
    prefix: -sortoptions
- id: in_index_outdir
  doc: outdir     [.] Index file output directory
  type: File?
  inputBinding:
    prefix: -indexoutdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [*.dbifasta] General log output file
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_index_outdir
  doc: outdir     [.] Index file output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_index_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- _dbifasta
