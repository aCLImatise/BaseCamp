class: CommandLineTool
id: pubmlst_download.cwl
inputs:
- id: in_scheme_name
  doc: scheme name
  type: string
  inputBinding:
    prefix: --scheme_name
- id: in_scheme_id
  doc: scheme id
  type: string
  inputBinding:
    prefix: --scheme_id
- id: in_outdir
  doc: output directory
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_base_url
  doc: "Base URL for the API. Suggested values are:\nhttp://rest.pubmlst.org/db (default),\n\
    https://bigsdb.pasteur.fr/api/db\n"
  type: string
  inputBinding:
    prefix: --base-url
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- pubmlst_download
