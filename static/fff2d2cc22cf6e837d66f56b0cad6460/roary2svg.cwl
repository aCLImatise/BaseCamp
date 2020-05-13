class: CommandLineTool
id: roary2svg.pl.cwl
inputs:
- id: verbose
  doc: "!      Verbose output (default '0')."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: width
  doc: Canvas width (default '1024').
  type: string
  inputBinding:
    prefix: --width
- id: height
  doc: Row height (default '20').
  type: string
  inputBinding:
    prefix: --height
- id: tax_a_column
  doc: Column in gpa.csv where taxa begin (default '14').
  type: string
  inputBinding:
    prefix: --taxacolumn
- id: colour
  doc: Colour of core cells (default 'SteelBlue').
  type: string
  inputBinding:
    prefix: --colour
- id: sep_colour
  doc: Colour of horizontal separators/borders (default 'LightGray').
  type: string
  inputBinding:
    prefix: --sepcolour
- id: acc_only
  doc: "!      Only draw accessory (non-core) genes (default '0')."
  type: boolean
  inputBinding:
    prefix: --acconly
- id: border
  doc: "!       Add outline border (default '0')."
  type: boolean
  inputBinding:
    prefix: --border
outputs: []
cwlVersion: v1.1
baseCommand:
- roary2svg.pl
