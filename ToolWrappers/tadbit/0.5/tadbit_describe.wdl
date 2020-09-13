version 1.0

task TadbitDescribe {
  input {
    File? workdir
    Boolean? nox
    Boolean? tables_show_write
    Boolean? what_tables_not
    Array[Int] job_ids
    Array[String] where
    Array[String] select
    File? tmp_db
    Boolean? tsv
    File? writes_output_specified
  }
  command <<<
    tadbit describe \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{if (nox) then "--noX" else ""} \
      ~{if (tables_show_write) then "-t" else ""} \
      ~{if (what_tables_not) then "-T" else ""} \
      ~{if defined(job_ids) then ("--jobids " +  '"' + job_ids + '"') else ""} \
      ~{if defined(where) then ("--where " +  '"' + where + '"') else ""} \
      ~{if defined(select) then ("--select " +  '"' + select + '"') else ""} \
      ~{if defined(tmp_db) then ("--tmpdb " +  '"' + tmp_db + '"') else ""} \
      ~{if (tsv) then "--tsv" else ""} \
      ~{if defined(writes_output_specified) then ("--output " +  '"' + writes_output_specified + '"') else ""}
  >>>
  parameter_meta {
    workdir: "path to working directory (generated with the tool tadbit map)"
    nox: "no display server (X screen)"
    tables_show_write: "[ ...], --tables  [ ...]\\n[['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12',\\n'13']] what tables to show, write either the sequence of names or\\nindexes, according to this list: 11: segment_outputs, 10:\\nmerge_outputs, 13: modeled_regions, 12: models, 1: paths, 3:\\nmapped_outputs, 2: jobs, 5: parsed_outputs, 4: mapped_inputs, 7:\\nfilter_outputs, 6: intersection_outputs, 9: merge_stats, 8:\\nnormalize_outputs"
    what_tables_not: "[ ...], --skip_tables  [ ...]\\n[[]] what tables NOT to show, write either the sequence of names or\\nindexes, according to this list: 11: segment_outputs, 10:\\nmerge_outputs, 13: modeled_regions, 12: models, 1: paths, 3:\\nmapped_outputs, 2: jobs, 5: parsed_outputs, 4: mapped_inputs, 7:\\nfilter_outputs, 6: intersection_outputs, 9: merge_stats, 8:\\nnormalize_outputs"
    job_ids: "Display only items matching these jobids."
    where: "Select rows. List pairs of keywords (column header) and values to\\nfilter results. For example to get only results where \\\"18\\\" appears\\nin the column \\\"Chromosome\\\", the option should be set as: `-W\\nChromosome,18`"
    select: "Select columns. List the keyword (column headers) to be displayed.\\nE.g. to show only the colmns JobIds: `-s Jobids`"
    tmp_db: "if provided uses this directory to manipulate the database"
    tsv: "Print output in tab separated format"
    writes_output_specified: "Writes output in specified file.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_writes_output_specified = "${in_writes_output_specified}"
  }
}