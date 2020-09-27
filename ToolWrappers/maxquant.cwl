class: CommandLineTool
id: maxquant.cwl
inputs:
- id: in_partial_processing
  doc: "(Default: 1) Start processing from the\nspecified job id. Can be used to continue/redo\n\
    parts of the processing. Job id's can be\nobtained in the MaxQuant GUI partial\n\
    processing view or from --dryrun option. The\nfirst job id is 1."
  type: boolean
  inputBinding:
    prefix: --partial-processing
- id: in_partial_processing_end
  doc: "(Default: 2147483647) Finish processing at the\nspecified job id. 1-based\
    \ indexing is used."
  type: boolean
  inputBinding:
    prefix: --partial-processing-end
- id: in_dry_run
  doc: Print job ids and job names table.
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: in_create
  doc: Create a template of MaxQuant parameter file.
  type: boolean
  inputBinding:
    prefix: --create
- id: in_change_folder
  doc: "Change folder location for fasta and raw files\n(presuming all raw files are\
    \ in the same\nfolder).Expecting three locations separated by\nspace - location\
    \ of a new parameter file file,\na new folder of fasta files and a new folder\n\
    of raw files."
  type: boolean
  inputBinding:
    prefix: --changeFolder
- id: in_complete
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_run
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_an
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_existing
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_mq_par_dot_xml
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maxquant
