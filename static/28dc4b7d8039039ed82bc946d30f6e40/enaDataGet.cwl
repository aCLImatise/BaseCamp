class: CommandLineTool
id: enaDataGet.cwl
inputs:
- id: in_format
  doc: "File format required. Format requested must be\npermitted for data type selected.\
    \ sequence, assembly\nand wgs accessions: embl(default) and fasta formats.\nread\
    \ group: submitted, fastq and sra formats. analysis\ngroup: submitted only."
  type: string?
  inputBinding:
    prefix: --format
- id: in_dest
  doc: "Destination directory (default is current running\ndirectory)"
  type: Directory?
  inputBinding:
    prefix: --dest
- id: in_wgs
  doc: "Download WGS set for each assembly if available\n(default is false)"
  type: boolean?
  inputBinding:
    prefix: --wgs
- id: in_extract_wgs
  doc: "Extract WGS scaffolds for each assembly if available\n(default is false)"
  type: boolean?
  inputBinding:
    prefix: --extract-wgs
- id: in_expanded
  doc: "Expand CON scaffolds when downloading embl format\n(default is false)"
  type: boolean?
  inputBinding:
    prefix: --expanded
- id: in_meta
  doc: "Download read or analysis XML in addition to data\nfiles (default is false)"
  type: boolean?
  inputBinding:
    prefix: --meta
- id: in_index
  doc: "Download CRAM index files with submitted CRAM files,\nif any (default is false).\
    \ This flag is ignored for\nfastq and sra format options."
  type: boolean?
  inputBinding:
    prefix: --index
- id: in_aspera
  doc: "Use the aspera command line client to download,\ninstead of FTP."
  type: boolean?
  inputBinding:
    prefix: --aspera
- id: in_aspera_settings
  doc: "Use the provided settings file, will otherwise check\nfor environment variable\
    \ or default settings file\nlocation."
  type: File?
  inputBinding:
    prefix: --aspera-settings
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- enaDataGet
