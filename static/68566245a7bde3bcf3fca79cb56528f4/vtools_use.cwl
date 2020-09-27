class: CommandLineTool
id: vtools_use.cwl
inputs:
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1)."
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_as
  doc: "An alternative name for the linked database. This\noption allows the use of\
    \ shorter field names (e.g.\ntg.chr instead of thousandGenomes.chr) and the use\
    \ of\nmultiple versions of the same database."
  type: string
  inputBinding:
    prefix: --as
- id: in_list_fields_used
  doc: "[FIELD [FIELD ...]], --linked_by [FIELD [FIELD ...]], --linked-by [FIELD [FIELD\
    \ ...]]\nA list of fields that are used to link the annotation\ndatabase to tables\
    \ in the existing project. This\nparameter is required only for 'field' type of\n\
    annotation databases that link to fields of existing\ntables."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_an_no_type
  doc: "This option overrides type of an existing annotation\ndatabase when it is\
    \ attached to a project. It\ncorresponds to key anno_type of the data sources\n\
    section of an annotation file (with suffix .ann) but\ndoes not affect the .ann\
    \ file or the database built\nfrom it."
  type: string
  inputBinding:
    prefix: --anno_type
- id: in_linked_fields
  doc: "[LINKED_FIELDS [LINKED_FIELDS ...]], --linked-fields [LINKED_FIELDS [LINKED_FIELDS\
    \ ...]]\nAn alternative set of fields that are used to link the\nannotation database\
    \ to the master variant table. It\nshould have four, two, and three values for\
    \ database\nof type variant, position, and range. Similar to\nanno_type, this\
    \ option does not affect the .ann file\nor the database built from it."
  type: boolean
  inputBinding:
    prefix: --linked_fields
- id: in_list_specified_vtools
  doc: "[FILES [FILES ...]], --files [FILES [FILES ...]]\nA list of source files.\
    \ If specified, vtools will not\ntry to download and select source files. These\
    \ source\nfiles will be compiled into a local annotation\ndatabase. This is used\
    \ only when no local annotation\ndatabase is specified."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_rebuild
  doc: "If set, variant tools will always rebuild the\nannotation database from source,\
    \ ignoring existing\nlocal and online database. In addition to $name.DB,\nvariant\
    \ tools will also create $name-$version.DB.gz\nthat can be readily distributed."
  type: boolean
  inputBinding:
    prefix: --rebuild
- id: in_jobs
  doc: "If need to build database from source, maximum number\nof processes to use.\n"
  type: long
  inputBinding:
    prefix: --jobs
- id: in_field
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vtools
- use
