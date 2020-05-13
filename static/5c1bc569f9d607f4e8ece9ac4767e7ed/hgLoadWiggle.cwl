class: CommandLineTool
id: hgLoadWiggle.cwl
inputs:
- id: no_bin
  doc: suppress bin field
  type: boolean
  inputBinding:
    prefix: -noBin
- id: no_load
  doc: do not load table, only create .tab file
  type: boolean
  inputBinding:
    prefix: -noLoad
- id: no_history
  doc: do not add history table comments (for custom tracks)
  type: boolean
  inputBinding:
    prefix: -noHistory
- id: old_table
  doc: add to existing table
  type: boolean
  inputBinding:
    prefix: -oldTable
- id: tab
  doc: Separate by tabs rather than space
  type: boolean
  inputBinding:
    prefix: -tab
- id: path_prefix
  doc: .wib file path prefix to use (default /gbdb/<DB>/wib)
  type: File
  inputBinding:
    prefix: -pathPrefix
- id: chrom_info_db
  doc: database to extract chromInfo size information
  type: string
  inputBinding:
    prefix: -chromInfoDb
- id: max_chrom_name_length
  doc: chromName length to avoid
  type: string
  inputBinding:
    prefix: -maxChromNameLength
- id: reference
  doc: chromInfo table
  type: string
  inputBinding:
    prefix: '- reference'
- id: tmpdir
  doc: directory for creation of temporary .tab file
  type: File
  inputBinding:
    prefix: -tmpDir
- id: which
  doc: be removed after loading
  type: string
  inputBinding:
    prefix: '- which'
- id: verbose
  doc: 'N=2 see # of lines input and SQL create statement, N=3 see chrom size info,
    N=4 see details on chrom size info'
  type: string
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hgLoadWiggle
