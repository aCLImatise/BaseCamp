class: CommandLineTool
id: vtools_use.cwl
inputs:
- id: source
  doc: Use an annotation database ($source.DB or $source.DB.gz) if it is available,
    download or build the database if a description file ($source.ann) is available.
    Otherwise, this command will download a description file and the corresponding
    database from web (c.f. runtime variable $search_path) and the latest version
    of the datavase). If all means fail, this command will try to download the source
    of the annotation database (or use source files provided by option --files).
  type: string
  inputBinding:
    position: 0
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
- id: as
  doc: An alternative name for the linked database. This option allows the use of
    shorter field names (e.g. tg.chr instead of thousandGenomes.chr) and the use of
    multiple versions of the same database.
  type: string
  inputBinding:
    prefix: --as
- id: l
  doc: "[FIELD [FIELD ...]], --linked_by [FIELD [FIELD ...]], --linked-by [FIELD [FIELD\
    \ ...]] A list of fields that are used to link the annotation database to tables\
    \ in the existing project. This parameter is required only for 'field' type of\
    \ annotation databases that link to fields of existing tables."
  type: boolean
  inputBinding:
    prefix: -l
- id: an_no_type
  doc: This option overrides type of an existing annotation database when it is attached
    to a project. It corresponds to key anno_type of the data sources section of an
    annotation file (with suffix .ann) but does not affect the .ann file or the database
    built from it.
  type: string
  inputBinding:
    prefix: --anno_type
- id: linked_fields
  doc: '[LINKED_FIELDS [LINKED_FIELDS ...]], --linked-fields [LINKED_FIELDS [LINKED_FIELDS
    ...]] An alternative set of fields that are used to link the annotation database
    to the master variant table. It should have four, two, and three values for database
    of type variant, position, and range. Similar to anno_type, this option does not
    affect the .ann file or the database built from it.'
  type: boolean
  inputBinding:
    prefix: --linked_fields
- id: f
  doc: '[FILES [FILES ...]], --files [FILES [FILES ...]] A list of source files. If
    specified, vtools will not try to download and select source files. These source
    files will be compiled into a local annotation database. This is used only when
    no local annotation database is specified.'
  type: boolean
  inputBinding:
    prefix: -f
- id: rebuild
  doc: If set, variant tools will always rebuild the annotation database from source,
    ignoring existing local and online database. In addition to $name.DB, variant
    tools will also create $name-$version.DB.gz that can be readily distributed.
  type: boolean
  inputBinding:
    prefix: --rebuild
- id: jobs
  doc: If need to build database from source, maximum number of processes to use.
  type: string
  inputBinding:
    prefix: --jobs
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- use
