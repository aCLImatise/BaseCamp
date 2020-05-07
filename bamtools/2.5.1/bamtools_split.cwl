class: CommandLineTool
id: bamtools_split.cwl
inputs:
- id: in
  doc: the input BAM file [stdin]
  type: string
  inputBinding:
    prefix: -in
- id: ref_prefix
  doc: custom prefix for splitting by references. Currently files end with REF_<refName>.bam.
    This option allows you to replace "REF_" with a prefix of your choosing.
  type: string
  inputBinding:
    prefix: -refPrefix
- id: tag_prefix
  doc: custom prefix for splitting by tags. Current files end with TAG_<tagname>_<tagvalue>.bam.
    This option allows you to replace "TAG_" with a prefix of your choosing.
  type: string
  inputBinding:
    prefix: -tagPrefix
- id: stub
  doc: prefix stub for output BAM files (default behavior is to use input filename,
    without .bam extension, as stub). If input is stdin and no stub provided, a timestamp
    is generated as the stub.
  type: File
  inputBinding:
    prefix: -stub
- id: taglist_delim
  doc: delimiter used to separate values in the filenames generated from splitting
    on list-type tags [--]
  type: string
  inputBinding:
    prefix: -tagListDelim
- id: mapped
  doc: split mapped/unmapped alignments
  type: boolean
  inputBinding:
    prefix: -mapped
- id: paired
  doc: split single-end/paired-end alignments
  type: boolean
  inputBinding:
    prefix: -paired
- id: reference
  doc: split alignments by reference
  type: boolean
  inputBinding:
    prefix: -reference
- id: tag
  doc: splits alignments based on all values of TAG encountered (i.e. -tag RG creates
    a BAM file for each read group in original BAM file)
  type: string
  inputBinding:
    prefix: -tag
outputs: []
cwlVersion: v1.1
baseCommand:
- bamtools
- split
