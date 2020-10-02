class: CommandLineTool
id: enasearch_retrieve_data.cwl
inputs:
- id: in_ids
  doc: "Ids for records to return (other than Taxon and\nProject) [multiple]  [required]"
  type: string
  inputBinding:
    prefix: --ids
- id: in_display
  doc: "Display option to specify the display format\n(accessible with get_display_options)\
    \  [required]"
  type: string
  inputBinding:
    prefix: --display
- id: in_download
  doc: "Download option to specify that records are to be\nsaved in a file (used with\
    \ file option, list\naccessible with get_download_options)"
  type: File
  inputBinding:
    prefix: --download
- id: in_file
  doc: "File to save the content of the search (used with\ndownload option)"
  type: File
  inputBinding:
    prefix: --file
- id: in_offset
  doc: RANGE  First record to get (used only for display different
  type: long
  inputBinding:
    prefix: --offset
- id: in_length
  doc: "RANGE  Number of records to retrieve (used only for display\ndifferent of\
    \ fasta and fastq"
  type: long
  inputBinding:
    prefix: --length
- id: in_subseq_range
  doc: Range for subsequences (integer start and stop
  type: long
  inputBinding:
    prefix: --subseq_range
- id: in_expanded
  doc: Determine if a CON record is expanded
  type: boolean
  inputBinding:
    prefix: --expanded
- id: in_header
  doc: To obtain only the header of a record
  type: boolean
  inputBinding:
    prefix: --header
- id: in_of
  doc: fasta and fastq
  type: string
  inputBinding:
    position: 0
- id: in_separated
  doc: by a -)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- enasearch
- retrieve_data
