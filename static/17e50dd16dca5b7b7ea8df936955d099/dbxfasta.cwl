class: CommandLineTool
id: dbxfasta.cwl
inputs:
- id: in_id_format
  doc: "menu       [idacc] ID line format (Values: simple\n(>ID); idacc (>ID ACC or\
    \ >ID (ACC)); idsv\n(>ID SV or >ID (SV)); gcgid (>db:ID);\ngcgidacc (>db:ID ACC);\
    \ dbid (>db ID); ncbi\n(| formats))"
  type: boolean?
  inputBinding:
    prefix: -idformat
- id: in_directory
  doc: directory  [.] Database directory
  type: boolean?
  inputBinding:
    prefix: -directory
- id: in_filenames
  doc: "string     [*.fasta] Wildcard database filename (Any\nstring)"
  type: boolean?
  inputBinding:
    prefix: -filenames
- id: in_fields
  doc: "menu       [id,acc] Index fields (Values: id (ID); acc\n(Accession number);\
    \ sv (Sequence Version and\nGI); des (Description))"
  type: boolean?
  inputBinding:
    prefix: -fields
- id: in_outfile
  doc: outfile    [*.dbxfasta] General log output file
  type: File?
  inputBinding:
    prefix: -outfile
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
- id: in_exclude
  doc: string     Wildcard filename(s) to exclude (Any string)
  type: boolean?
  inputBinding:
    prefix: -exclude
- id: in_statistics
  doc: boolean    [N] Report I/O statistics for each input
  type: boolean?
  inputBinding:
    prefix: -statistics
- id: in_file
  doc: -indexoutdir        outdir     [.] Index file output directory
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [*.dbxfasta] General log output file
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- dbxfasta
