class: CommandLineTool
id: bamtools_2.4.1_split.cwl
inputs:
- id: in_in
  doc: the input BAM file [stdin]
  type: File
  inputBinding:
    prefix: -in
- id: in_ref_prefix
  doc: "custom prefix for splitting by\nreferences. Currently files end with\nREF_<refName>.bam.\
    \ This option allows you\nto replace \"REF_\" with a prefix of your\nchoosing."
  type: string
  inputBinding:
    prefix: -refPrefix
- id: in_tag_prefix
  doc: "custom prefix for splitting by\ntags. Current files end with\nTAG_<tagname>_<tagvalue>.bam.\
    \ This option\nallows you to replace \"TAG_\" with a prefix\nof your choosing."
  type: string
  inputBinding:
    prefix: -tagPrefix
- id: in_stub
  doc: "prefix stub for output BAM\nfiles (default behavior is to use input\nfilename,\
    \ without .bam extension, as\nstub). If input is stdin and no stub\nprovided,\
    \ a timestamp is generated as the\nstub."
  type: File
  inputBinding:
    prefix: -stub
- id: in_taglist_delim
  doc: "delimiter used to separate\nvalues in the filenames generated from\nsplitting\
    \ on list-type tags [--]"
  type: string
  inputBinding:
    prefix: -tagListDelim
- id: in_mapped
  doc: split mapped/unmapped
  type: boolean
  inputBinding:
    prefix: -mapped
- id: in_tag
  doc: "splits alignments based on all\nvalues of TAG encountered (i.e. -tag RG\n\
    creates a BAM file for each read group in\noriginal BAM file)"
  type: File
  inputBinding:
    prefix: -tag
- id: in_bam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_split
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bamtools-2.4.1
- split
