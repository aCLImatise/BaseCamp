class: CommandLineTool
id: fa.cwl
inputs:
- id: in_verbose
  doc: "!      Debug info (default '0')."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_desc
  doc: "!         Description at end (default '0')."
  type: boolean?
  inputBinding:
    prefix: --desc
- id: in_bases
  doc: "!        Base composition (implies --full) (default '0')."
  type: boolean?
  inputBinding:
    prefix: --bases
- id: in_full
  doc: "!         Print details for each sequence (default '0')."
  type: boolean?
  inputBinding:
    prefix: --full
- id: in_each
  doc: "!         Don't combine results of all input files into one (default '0')."
  type: boolean?
  inputBinding:
    prefix: --each
- id: in_minsize
  doc: Minimum size to include in calcs (default '0').
  type: long?
  inputBinding:
    prefix: --minsize
- id: in_widthi_max_width
  doc: "|width=i     Max. width of filename column (default '25')."
  type: boolean?
  inputBinding:
    prefix: --w
- id: in_tabbed_produce_tab
  doc: "|tabbed!     Produce tab delimited output table (default '0')."
  type: boolean?
  inputBinding:
    prefix: --t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fa
