class: CommandLineTool
id: hailctl_auth_login.cwl
inputs:
- id: in_namespace
  doc: "Specify namespace for auth server. (default: from\ndeploy configuration)\n"
  type: string?
  inputBinding:
    prefix: --namespace
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1
cwlVersion: v1.1
baseCommand:
- hailctl
- auth
- login
