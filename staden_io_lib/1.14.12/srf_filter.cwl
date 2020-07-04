class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/srf_filter.cwl
inputs:
- id: chunk_types_output
  doc: 'Chunk types to output given as a comma delimited list of types. The following
    types are allowed: "ALL", "BASE", "CNF1", "CNF4" "SAMP", "SMP4". The default is
    "ALL".'
  type: string
  inputBinding:
    prefix: -c
- id: sampsmp_mdata_types
  doc: 'SAMP/SMP4 mdata types to output given as a comma delimited list of types.
    The following types are allowed: "ALL", "PROC", "SLXI", "SLXN" "0FAM", "1CY3",
    "2TXR", "3CY5". The default is "ALL".'
  type: string
  inputBinding:
    prefix: -m
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
- id: exclude_bad_reads
  doc: exclude bad reads using readsFlags bitmask in data block header.
  type: boolean
  inputBinding:
    prefix: -b
- id: use_option_add
  doc: use this option to add a Illumina-style REGN chunk.
  type: string
  inputBinding:
    prefix: '-2'
- id: print_verbose_messages
  doc: Print verbose messages.
  type: boolean
  inputBinding:
    prefix: -v
- id: var_6
  doc: ''
  type: boolean
  inputBinding:
    prefix: -C
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- srf_filter
