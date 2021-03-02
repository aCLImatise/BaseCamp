class: CommandLineTool
id: pypgatk_cli_cbioportal_downloader.cwl
inputs:
- id: in_config_file
  doc: "Configuration file for the ensembl data\ndownloader pipeline"
  type: File?
  inputBinding:
    prefix: --config_file
- id: in_output_directory
  doc: Output directory for the peptide databases
  type: Directory?
  inputBinding:
    prefix: --output_directory
- id: in_list_studies
  doc: "Print the list of all the studies in cBioPortal\n(https://www.cbioportal.org)"
  type: boolean?
  inputBinding:
    prefix: --list_studies
- id: in_download_study
  doc: "Download a specific Study from cBioPortal --\n(all to download all studies)"
  type: string?
  inputBinding:
    prefix: --download_study
- id: in_multithreading
  doc: "Enable multithreading to download multiple\nfiles ad the same time"
  type: boolean?
  inputBinding:
    prefix: --multithreading
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory for the peptide databases
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pypgatk:0.0.15--py_0
cwlVersion: v1.1
baseCommand:
- pypgatk_cli
- cbioportal-downloader
