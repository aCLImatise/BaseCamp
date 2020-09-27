class: CommandLineTool
id: planemo_brew_env.cwl
inputs:
- id: in_brew
  doc: Homebrew 'brew' executable to use.
  type: File
  inputBinding:
    prefix: --brew
- id: in_skip_install
  doc: Skip installation - only source requirements already
  type: boolean
  inputBinding:
    prefix: --skip_install
- id: in_dependencies_dot
  doc: "% . <(planemo brew_env bowtie2.xml)\n% which bowtie2\n/home/john/.linuxbrew/Cellar/bowtie2/2.1.0/bin/bowtie2"
  type: string
  inputBinding:
    position: 0
- id: in_available_dot
  doc: --shell
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- planemo
- brew_env
