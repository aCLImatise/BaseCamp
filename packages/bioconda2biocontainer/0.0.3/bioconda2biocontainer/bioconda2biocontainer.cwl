class: CommandLineTool
id: bioconda2biocontainer.cwl
inputs:
- id: in_package_name
  doc: Bioconda package name
  type: string
  inputBinding:
    prefix: --package_name
- id: in_package_version
  doc: Bioconda package version
  type: string
  inputBinding:
    prefix: --package_version
- id: in_container_type
  doc: "Container type. Default: Docker. Values: Docker,\nConda, Singularity"
  type: string
  inputBinding:
    prefix: --container_type
- id: in_registry_host
  doc: 'Registry host. Default: quay.io.Values:'
  type: string
  inputBinding:
    prefix: --registry_host
- id: in_json
  doc: Print json format
  type: boolean
  inputBinding:
    prefix: --json
- id: in_all
  doc: Print all images
  type: boolean
  inputBinding:
    prefix: --all
- id: in_sort_by_size
  doc: Sort by size instead of by date
  type: boolean
  inputBinding:
    prefix: --sort_by_size
- id: in_sort_by_download
  doc: Sort by number of downloads instead of by date
  type: boolean
  inputBinding:
    prefix: --sort_by_download
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bioconda2biocontainer
