class: CommandLineTool
id: srf_filter.cwl
inputs:
- id: in_chunk_types_output
  doc: "Chunk types to output given as a comma delimited list of types.\nThe following\
    \ types are allowed: \"ALL\", \"BASE\", \"CNF1\", \"CNF4\"\n\"SAMP\", \"SMP4\"\
    .\nThe default is \"ALL\"."
  type: long?
  inputBinding:
    prefix: -c
- id: in_sampsmp_mdata_types
  doc: "SAMP/SMP4 mdata types to output given as a comma delimited list of types.\n\
    The following types are allowed: \"ALL\", \"PROC\", \"SLXI\", \"SLXN\"\n\"0FAM\"\
    , \"1CY3\", \"2TXR\", \"3CY5\".\nThe default is \"ALL\"."
  type: long?
  inputBinding:
    prefix: -m
- id: in_filter_apply_match
  doc: "The filter to apply to reads in the archive.  If reads match the\nfilter they\
    \ are dumped.\nThe filter takes the form of <name>=<value>, where <name> can be\n\
    \"read\", \"prefix\", \"file\".\nIf the <name> is \"read\" the value is represents\
    \ the name of a\nread to dump.  Only the matching read will be dumped.\nIf the\
    \ <name> is \"prefix\" the value is represents the prefix of\nthe name of the\
    \ reads to dump.  Only the matching reads will be\ndumped.\nIf the <name> is \"\
    file\" the value is a file name where any\nnumber of \"read\" and \"prefix\" name\
    \ value pairs can be included,\none per line.\nThe default is no filter, which\
    \ means all reads are dumped."
  type: long?
  inputBinding:
    prefix: -f
- id: in_exclude_bad_reads
  doc: exclude bad reads using readsFlags bitmask in data block header.
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_use_option_add
  doc: use this option to add a Illumina-style REGN chunk.
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_print_verbose_messages
  doc: Print verbose messages.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_o
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_var_7
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0
cwlVersion: v1.1
baseCommand:
- srf_filter
