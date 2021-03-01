class: CommandLineTool
id: hgLoadWiggle.cwl
inputs:
- id: in_no_bin
  doc: suppress bin field
  type: boolean?
  inputBinding:
    prefix: -noBin
- id: in_no_load
  doc: do not load table, only create .tab file
  type: boolean?
  inputBinding:
    prefix: -noLoad
- id: in_no_history
  doc: do not add history table comments (for custom tracks)
  type: boolean?
  inputBinding:
    prefix: -noHistory
- id: in_old_table
  doc: add to existing table
  type: boolean?
  inputBinding:
    prefix: -oldTable
- id: in_tab
  doc: Separate by tabs rather than space
  type: boolean?
  inputBinding:
    prefix: -tab
- id: in_path_prefix
  doc: .wib file path prefix to use (default /gbdb/<DB>/wib)
  type: File?
  inputBinding:
    prefix: -pathPrefix
- id: in_chrom_info_db
  doc: database to extract chromInfo size information
  type: long?
  inputBinding:
    prefix: -chromInfoDb
- id: in_max_chrom_name_length
  doc: "- specify max chromName length to avoid\n- reference to chromInfo table"
  type: long?
  inputBinding:
    prefix: -maxChromNameLength
- id: in_tmpdir
  doc: "- path to directory for creation of temporary .tab file\n- which will be removed\
    \ after loading"
  type: File?
  inputBinding:
    prefix: -tmpDir
- id: in_verbose
  doc: "N=2 see # of lines input and SQL create statement,\nN=3 see chrom size info,\
    \ N=4 see details on chrom size info\n"
  type: long?
  inputBinding:
    prefix: -verbose
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_track
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hgLoadWiggle
