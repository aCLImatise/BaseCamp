class: CommandLineTool
id: rsat_install_ensembl_genome.cwl
inputs:
- id: in_install_ensembl_genome
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_package_dot
  doc: "\e[1mdownload-ensembl-features\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_latest
  doc: "This corresponds to the lastest release of Ensembl. Beware: this\nrelease\
    \ is not guaranteed to be compatible with RSAT, in case\nEnsembl would change\
    \ their file formats or locations."
  type: string
  inputBinding:
    position: 0
- id: in_analysis_dot
  doc: "This task is executed by running \e[33minstall-organism\e[0m."
  type: string
  inputBinding:
    position: 0
- id: in_incomplete_dot
  doc: "\e[1m-dry\e[0m"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rsat
- install-ensembl-genome
