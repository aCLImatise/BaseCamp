class: CommandLineTool
id: quast_download_busco.cwl
inputs:
- id: in_done
  doc: Downloading BUSCO database...
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- quast-download-busco
