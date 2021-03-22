class: CommandLineTool
id: srf_dump_all.cwl
inputs:
- id: in_chunk_types_allowed
  doc: "Chunk types to output given as a comma delimited list of types.\nThe following\
    \ types are allowed: \"all\", \"seq\", \"prb\",\n\"int\", \"nse\", \"sig2\".\n\
    The default is \"all\"."
  type: long?
  inputBinding:
    prefix: -c
- id: in_distinations_output_tothe
  doc: "Distinations to output to.\nThe following types are allowed: \"console\",\
    \ \"file\", \"none\".\nThe default is \"console\".  Console and file can be together,\n\
    but none is exclusive."
  type: File?
  inputBinding:
    prefix: -d
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
- id: in_output_at_bottom
  doc: Output the total number of reads at the bottom.
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_output_number_only
  doc: Output the total number of reads only.  Nothing else is output.
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_type_output_only
  doc: "Type of output.  Only one value allowed.\nCurrently \"text\" and \"solexa\"\
    \ is supported.\nThe default is \"text\"."
  type: string?
  inputBinding:
    prefix: -t
- id: in_print_verbose_messages
  doc: Print verbose messages.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_archive_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_distinations_output_tothe
  doc: "Distinations to output to.\nThe following types are allowed: \"console\",\
    \ \"file\", \"none\".\nThe default is \"console\".  Console and file can be together,\n\
    but none is exclusive."
  type: File?
  outputBinding:
    glob: $(inputs.in_distinations_output_tothe)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0
cwlVersion: v1.1
baseCommand:
- srf_dump_all
