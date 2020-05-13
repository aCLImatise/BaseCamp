class: CommandLineTool
id: enasearch_retrieve_taxons.cwl
inputs:
- id: ids
  doc: Ids for taxon to return [multiple]  [required]
  type: string
  inputBinding:
    prefix: --ids
- id: display
  doc: Display option to specify the display format (accessible with get_display_options)  [required]
  type: string
  inputBinding:
    prefix: --display
- id: result
  doc: Id of a taxonomy result (accessible with get_taxonomy_results)
  type: string
  inputBinding:
    prefix: --result
- id: download
  doc: Download option to specify that records are to be saved in a file (used with
    file option, list accessible with get_download_options)
  type: string
  inputBinding:
    prefix: --download
- id: file
  doc: File to save the content of the search (used with download option)
  type: File
  inputBinding:
    prefix: --file
- id: offset
  doc: RANGE  First record to get (used only for display different of fasta and fastq
  type: long
  inputBinding:
    prefix: --offset
- id: length
  doc: RANGE  Number of records to retrieve (used only for display different of fasta
    and fastq
  type: long
  inputBinding:
    prefix: --length
- id: subseq_range
  doc: Range for subsequences (integer start and stop separated by a -)
  type: string
  inputBinding:
    prefix: --subseq_range
- id: expanded
  doc: Determine if a CON record is expanded
  type: boolean
  inputBinding:
    prefix: --expanded
- id: header
  doc: To obtain only the header of a record
  type: boolean
  inputBinding:
    prefix: --header
outputs: []
cwlVersion: v1.1
baseCommand:
- enasearch
- retrieve_taxons
