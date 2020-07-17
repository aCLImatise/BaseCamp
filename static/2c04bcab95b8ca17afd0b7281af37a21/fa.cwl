class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fa.cwl
inputs:
- id: verbose
  doc: "!      Debug info (default '0')."
  type: boolean
  inputBinding:
    prefix: --verbose
- id: desc
  doc: "!         Description at end (default '0')."
  type: boolean
  inputBinding:
    prefix: --desc
- id: bases
  doc: "!        Base composition (implies --full) (default '0')."
  type: boolean
  inputBinding:
    prefix: --bases
- id: full
  doc: "!         Print details for each sequence (default '0')."
  type: boolean
  inputBinding:
    prefix: --full
- id: each
  doc: "!         Don't combine results of all input files into one (default '0')."
  type: boolean
  inputBinding:
    prefix: --each
- id: minsize
  doc: Minimum size to include in calcs (default '0').
  type: string
  inputBinding:
    prefix: --minsize
- id: widthi_max_width
  doc: "|width=i     Max. width of filename column (default '25')."
  type: boolean
  inputBinding:
    prefix: --w
- id: tabbed_produce_tab
  doc: "|tabbed!     Produce tab delimited output table (default '0')."
  type: boolean
  inputBinding:
    prefix: --t
outputs: []
cwlVersion: v1.1
baseCommand:
- fa
