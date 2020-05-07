class: CommandLineTool
id: enaDataGet.cwl
inputs:
- id: accession
  doc: Sequence, coding, assembly, run, experiment or analysis accession or WGS prefix
    (LLLLVV) to download
  type: string
  inputBinding:
    position: 0
- id: format
  doc: 'File format required. Format requested must be permitted for data type selected.
    sequence, assembly and wgs accessions: embl(default) and fasta formats. read group:
    submitted, fastq and sra formats. analysis group: submitted only.'
  type: string
  inputBinding:
    prefix: --format
- id: dest
  doc: Destination directory (default is current running directory)
  type: string
  inputBinding:
    prefix: --dest
- id: wgs
  doc: Download WGS set for each assembly if available (default is false)
  type: boolean
  inputBinding:
    prefix: --wgs
- id: extract_wgs
  doc: Extract WGS scaffolds for each assembly if available (default is false)
  type: boolean
  inputBinding:
    prefix: --extract-wgs
- id: expanded
  doc: Expand CON scaffolds when downloading embl format (default is false)
  type: boolean
  inputBinding:
    prefix: --expanded
- id: meta
  doc: Download read or analysis XML in addition to data files (default is false)
  type: boolean
  inputBinding:
    prefix: --meta
- id: index
  doc: Download CRAM index files with submitted CRAM files, if any (default is false).
    This flag is ignored for fastq and sra format options.
  type: boolean
  inputBinding:
    prefix: --index
- id: aspera
  doc: Use the aspera command line client to download, instead of FTP.
  type: boolean
  inputBinding:
    prefix: --aspera
- id: aspera_settings
  doc: Use the provided settings file, will otherwise check for environment variable
    or default settings file location.
  type: string
  inputBinding:
    prefix: --aspera-settings
outputs: []
cwlVersion: v1.1
baseCommand:
- enaDataGet
