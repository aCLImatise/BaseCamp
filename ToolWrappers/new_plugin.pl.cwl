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
cwlVersion: v1.1
baseCommand:
- new-plugin.pl
