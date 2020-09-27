class: CommandLineTool
id: addSurrogatesToFrgctg.perl.cwl
inputs:
- id: in_help_dot_asm
  doc: "'t exist!"
  type: string
  inputBinding:
    prefix: --help.asm
- id: in_help_dot_pos_map_do_tut_glen
  doc: "'t exist!"
  type: string
  inputBinding:
    prefix: --help.posmap.utglen
- id: in_help_dotposmapdotfrgutg
  doc: "'t exist!"
  type: string
  inputBinding:
    prefix: --help.posmap.frgutg
- id: in_help_dotposmapdotutgctg
  doc: "'t exist!"
  type: string
  inputBinding:
    prefix: --help.posmap.utgctg
- id: in_help_dotposmapdotfrgctg
  doc: "'t exist!"
  type: string
  inputBinding:
    prefix: --help.posmap.frgctg
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- addSurrogatesToFrgctg.perl
