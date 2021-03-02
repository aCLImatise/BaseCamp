version 1.0

task VtoolsUse {
  input {
    String? verbosity
    String? alternative_name_thisoption
    Boolean? list_fields_used
    String? an_no_type
    Boolean? linked_fields
    Boolean? list_vtools_nottry
    Boolean? rebuild
    Int? jobs
    String? field
  }
  command <<<
    vtools use \
      ~{field} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(alternative_name_thisoption) then ("--as " +  '"' + alternative_name_thisoption + '"') else ""} \
      ~{if (list_fields_used) then "-l" else ""} \
      ~{if defined(an_no_type) then ("--anno_type " +  '"' + an_no_type + '"') else ""} \
      ~{if (linked_fields) then "--linked_fields" else ""} \
      ~{if (list_vtools_nottry) then "-f" else ""} \
      ~{if (rebuild) then "--rebuild" else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1)."
    alternative_name_thisoption: "An alternative name for the linked database. This\\noption allows the use of shorter field names (e.g.\\ntg.chr instead of thousandGenomes.chr) and the use of\\nmultiple versions of the same database."
    list_fields_used: "[FIELD [FIELD ...]], --linked_by [FIELD [FIELD ...]], --linked-by [FIELD [FIELD ...]]\\nA list of fields that are used to link the annotation\\ndatabase to tables in the existing project. This\\nparameter is required only for 'field' type of\\nannotation databases that link to fields of existing\\ntables."
    an_no_type: "This option overrides type of an existing annotation\\ndatabase when it is attached to a project. It\\ncorresponds to key anno_type of the data sources\\nsection of an annotation file (with suffix .ann) but\\ndoes not affect the .ann file or the database built\\nfrom it."
    linked_fields: "[LINKED_FIELDS [LINKED_FIELDS ...]], --linked-fields [LINKED_FIELDS [LINKED_FIELDS ...]]\\nAn alternative set of fields that are used to link the\\nannotation database to the master variant table. It\\nshould have four, two, and three values for database\\nof type variant, position, and range. Similar to\\nanno_type, this option does not affect the .ann file\\nor the database built from it."
    list_vtools_nottry: "[FILES [FILES ...]], --files [FILES [FILES ...]]\\nA list of source files. If specified, vtools will not\\ntry to download and select source files. These source\\nfiles will be compiled into a local annotation\\ndatabase. This is used only when no local annotation\\ndatabase is specified."
    rebuild: "If set, variant tools will always rebuild the\\nannotation database from source, ignoring existing\\nlocal and online database. In addition to $name.DB,\\nvariant tools will also create $name-$version.DB.gz\\nthat can be readily distributed."
    jobs: "If need to build database from source, maximum number\\nof processes to use.\\n"
    field: ""
  }
  output {
    File out_stdout = stdout()
  }
}