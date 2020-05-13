class: CommandLineTool
id: srf_dump_all.cwl
inputs:
- id: archive_name
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: c
  doc: 'Chunk types to output given as a comma delimited list of types. The following
    types are allowed: "all", "seq", "prb", "int", "nse", "sig2". The default is "all".'
  type: string
  inputBinding:
    prefix: -c
- id: d
  doc: 'Distinations to output to. The following types are allowed: "console", "file",
    "none". The default is "console".  Console and file can be together,  but none
    is exclusive.'
  type: string
  inputBinding:
    prefix: -d
- id: f
  doc: The filter to apply to reads in the archive.  If reads match the filter they
    are dumped. The filter takes the form of <name>=<value>, where <name> can be "read",
    "prefix", "file". If the <name> is "read" the value is represents the name of
    a read to dump.  Only the matching read will be dumped. If the <name> is "prefix"
    the value is represents the prefix of the name of the reads to dump.  Only the
    matching reads will be dumped. If the <name> is "file" the value is a file name
    where any number of "read" and "prefix" name value pairs can be included, one
    per line. The default is no filter, which means all reads are dumped.
  type: string
  inputBinding:
    prefix: -f
- id: n
  doc: Output the total number of reads at the bottom.
  type: boolean
  inputBinding:
    prefix: -n
- id: o
  doc: Output the total number of reads only.  Nothing else is output.
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: Type of output.  Only one value allowed. Currently "text" and "solexa" is supported.
    The default is "text".
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: Print verbose messages.
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- srf_dump_all
