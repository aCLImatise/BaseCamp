class: CommandLineTool
id: sortPolishes.cwl
inputs:
- id: in_c_sort_cdna
  doc: (-C)    Sort by the cDNA index (defline).
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_g_sort_genomic
  doc: (-G)    Sort by the genomic index (defline).
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_skip_sort_do
  doc: Skip the sort, just do a merge.
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_use_using_merge
  doc: "Use at most M MB of core, using a disk-based merge if memory\nis exhausted.\
    \  Default: 4096."
  type: long?
  inputBinding:
    prefix: -m
- id: in_use_directory_temporary
  doc: "Use directory 'T' for temporary files.  Default is the current\nworking directory.\
    \  The sort unlinks files immediately after\ncreation: no files will exist, but\
    \ space will be used."
  type: Directory?
  inputBinding:
    prefix: -t
- id: in_gff_three
  doc: Format output as GFF3.
  type: boolean?
  inputBinding:
    prefix: -gff3
- id: in_be_verbose
  doc: Be verbose.
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sortPolishes
