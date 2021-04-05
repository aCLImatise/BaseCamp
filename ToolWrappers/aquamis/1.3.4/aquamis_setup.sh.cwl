class: CommandLineTool
id: aquamis_setup.sh.cwl
inputs:
- id: in_mamba
  doc: "Install the latest version of 'mamba' to the conda base environment and\n\
    create the AQUAMIS environment from the git repository recipe"
  type: boolean?
  inputBinding:
    prefix: --mamba
- id: in_databases
  doc: Download databases to ./AQUAMIS/download and extract them in e.g. ./AQUAMIS/reference_db
  type: boolean?
  inputBinding:
    prefix: --databases
- id: in_test_data
  doc: Download test data to ./AQUAMIS/download and extract them in ./AQUAMIS/test_data
  type: boolean?
  inputBinding:
    prefix: --test_data
- id: in_force
  doc: Force overwrite for downloads in /usr/local/opt/aquamis/download
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_keep_downloads
  doc: Do not remove downloads after extraction
  type: boolean?
  inputBinding:
    prefix: --keep_downloads
- id: in_verbose
  doc: Print script debug info
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aquamis:1.3.4--0
cwlVersion: v1.1
baseCommand:
- aquamis_setup.sh
