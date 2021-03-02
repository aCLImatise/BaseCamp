class: CommandLineTool
id: new_plugin.pl.cwl
inputs:
- id: in_plugin_dot
  doc: "USAGE\nbin/new-plugin.pl MyNewPlugin\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jbrowse:1.16.10--pl526hc9558a2_0
cwlVersion: v1.1
baseCommand:
- new-plugin.pl
