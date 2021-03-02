class: CommandLineTool
id: CATCh_v1.run.cwl
inputs:
- id: in_confirm
  doc: Ask before running embedded script
  type: boolean?
  inputBinding:
    prefix: --confirm
- id: in_noexec
  doc: Do not run embedded script
  type: boolean?
  inputBinding:
    prefix: --noexec
- id: in_keep
  doc: "Do not erase target directory after running\nthe embedded script"
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_nox_one_one
  doc: Do not spawn an xterm
  type: boolean?
  inputBinding:
    prefix: --nox11
- id: in_no_chown
  doc: Do not give the extracted files to the current user
  type: boolean?
  inputBinding:
    prefix: --nochown
- id: in_target
  doc: Extract in NewDirectory
  type: Directory?
  inputBinding:
    prefix: --target
- id: in_tar
  doc: Access the contents of the archive through the tar command
  type: long[]
  inputBinding:
    prefix: --tar
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/catch_chimera:1.0--0
cwlVersion: v1.1
baseCommand:
- CATCh_v1.run
