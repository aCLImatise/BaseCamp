class: CommandLineTool
id: ../../../srf_dump_all.cwl
inputs:
- id: chunk_types_output
  doc: 'Chunk types to output given as a comma delimited list of types. The following
    types are allowed: "all", "seq", "prb", "int", "nse", "sig2". The default is "all".'
  type: string
  inputBinding:
    prefix: -c
- id: distinations_output_following
  doc: 'Distinations to output to. The following types are allowed: "console", "file",
    "none". The default is "console".  Console and file can be together,  but none
    is exclusive.'
  type: string
  inputBinding:
    prefix: -d
- id: filter_apply_reads
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
- id: output_at_bottom
  doc: Output the total number of reads at the bottom.
  type: boolean
  inputBinding:
    prefix: -n
- id: output_number_only
  doc: Output the total number of reads only.  Nothing else is output.
  type: boolean
  inputBinding:
    prefix: -o
- id: type_output_only
  doc: Type of output.  Only one value allowed. Currently "text" and "solexa" is supported.
    The default is "text".
  type: string
  inputBinding:
    prefix: -t
- id: print_verbose_messages
  doc: Print verbose messages.
  type: boolean
  inputBinding:
    prefix: -v
- id: archive_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- srf_dump_all
