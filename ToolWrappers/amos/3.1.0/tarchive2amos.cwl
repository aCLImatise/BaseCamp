class: CommandLineTool
id: tarchive2amos.cwl
inputs:
- id: in_assembly
  doc: "- XML file containing assembly in assembly archive format\nhttp://www.ncbi.nlm.nih.gov/Traces/assembly/assmbrowser.cgi\n\
    usually named ASSEMBLY.xml in the tar-ball downloaded from NCBI"
  type: File?
  inputBinding:
    prefix: -assembly
- id: in_trace_dir
  doc: "- directory containing the trace information as downloaded\nfrom the NCBI,\
    \ either from the assembly archive or through\na direct query in the trace archive.\
    \  This directory must contain\na file named TRACEINFO.xml as well as one or more\
    \ subdirs\ncontaining the trace information for the organism(s) whose\ntraces\
    \ are being processed."
  type: File?
  inputBinding:
    prefix: -tracedir
- id: in_file_containing_ranges
  doc: "- file containing clear ranges for the reads.  If this file\nis provided,\
    \ any sequence that does not appear in it is\nexcluded from the output."
  type: File?
  inputBinding:
    prefix: -c
- id: in_file_containing_matepair_information
  doc: "- file containing mate-pair information as specified in the\nBAMBUS documentation.\
    \  This file replaces information\nprovided in .xml files"
  type: File?
  inputBinding:
    prefix: -m
- id: in_file_containing_meanstdev_information
  doc: "- file containing mean/stdev information for libraries.\nOverrides .xml input."
  type: File?
  inputBinding:
    prefix: -l
- id: in_start_numbering_messages
  doc: "- start numbering messages with id <id>\n(useful when appending to a bank)"
  type: string?
  inputBinding:
    prefix: -i
- id: in_min
  doc: '- reads shorter than <minlen> are rejected (default 0)'
  type: long?
  inputBinding:
    prefix: -min
- id: in_max
  doc: '- reads longer than <maxlen> are rejected (default no limit)'
  type: long?
  inputBinding:
    prefix: -max
- id: in_qual
  doc: "- default quality value assigned when no quality file is\nprovided (default\
    \ 20)"
  type: File?
  inputBinding:
    prefix: -qual
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_containing_ranges
  doc: "- file containing clear ranges for the reads.  If this file\nis provided,\
    \ any sequence that does not appear in it is\nexcluded from the output."
  type: File?
  outputBinding:
    glob: $(inputs.in_file_containing_ranges)
hints: []
cwlVersion: v1.1
baseCommand:
- tarchive2amos
