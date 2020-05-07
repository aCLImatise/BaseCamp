class: CommandLineTool
id: enaGroupGet.cwl
inputs:
- id: accession
  doc: Study or sample accession or NCBI tax ID to fetch data for
  type: string
  inputBinding:
    position: 0
- id: group
  doc: Data group to be downloaded for this study/sample/taxon (default is read)
  type: string
  inputBinding:
    prefix: --group
- id: format
  doc: 'File format required. Format requested must be permitted for data group selected.
    sequence, assembly and wgs groups: embl and fasta formats. read group: submitted,
    fastq and sra formats. analysis group: submitted only.'
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
- id: subtree
  doc: Include subordinate taxa (taxon subtree) when querying with NCBI tax ID (default
    is false)
  type: boolean
  inputBinding:
    prefix: --subtree
outputs: []
cwlVersion: v1.1
baseCommand:
- enaGroupGet
