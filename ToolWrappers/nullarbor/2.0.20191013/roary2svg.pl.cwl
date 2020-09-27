class: CommandLineTool
id: roary2svg.pl.cwl
inputs:
- id: in_verbose
  doc: "!      Verbose output (default '0')."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_width
  doc: Canvas width (default '1024').
  type: long
  inputBinding:
    prefix: --width
- id: in_height
  doc: Row height (default '20').
  type: long
  inputBinding:
    prefix: --height
- id: in_tax_a_column
  doc: Column in gpa.csv where taxa begin (default '14').
  type: long
  inputBinding:
    prefix: --taxacolumn
- id: in_colour
  doc: Colour of core cells (default 'SteelBlue').
  type: string
  inputBinding:
    prefix: --colour
- id: in_sep_colour
  doc: Colour of horizontal separators/borders (default 'LightGray').
  type: string
  inputBinding:
    prefix: --sepcolour
- id: in_acc_only
  doc: "!      Only draw accessory (non-core) genes (default '0')."
  type: boolean
  inputBinding:
    prefix: --acconly
- id: in_border
  doc: "!       Add outline border (default '0')."
  type: boolean
  inputBinding:
    prefix: --border
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- roary2svg.pl
