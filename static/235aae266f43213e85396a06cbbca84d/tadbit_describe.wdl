version 1.0

task TadbitDescribe {
  input {
    File? workdir
    Boolean? nox
    Boolean? tables_show_write
    Boolean? tables_not_show
    Array[Int] job_ids
    Array[String] where
    Array[String] select
    File? tmp_db
    Boolean? tsv
    String? writes_output_specified
  }
  command <<<
    tadbit describe \
      ~{if defined(workdir) then ("--workdir " +  '"' + workdir + '"') else ""} \
      ~{true="--noX" false="" nox} \
      ~{true="-t" false="" tables_show_write} \
      ~{true="-T" false="" tables_not_show} \
      ~{if defined(job_ids) then ("--jobids " +  '"' + job_ids + '"') else ""} \
      ~{if defined(where) then ("--where " +  '"' + where + '"') else ""} \
      ~{if defined(select) then ("--select " +  '"' + select + '"') else ""} \
      ~{if defined(tmp_db) then ("--tmpdb " +  '"' + tmp_db + '"') else ""} \
      ~{true="--tsv" false="" tsv} \
      ~{if defined(writes_output_specified) then ("--output " +  '"' + writes_output_specified + '"') else ""}
  >>>
  parameter_meta {
    workdir: "path to working directory (generated with the tool tadbit map)"
    nox: "no display server (X screen)"
    tables_show_write: "[ ...], --tables  [ ...] [['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13']] what tables to show, write either the sequence of names or indexes, according to this list: 11: segment_outputs, 10: merge_outputs, 13: modeled_regions, 12: models, 1: paths, 3: mapped_outputs, 2: jobs, 5: parsed_outputs, 4: mapped_inputs, 7: filter_outputs, 6: intersection_outputs, 9: merge_stats, 8: normalize_outputs"
    tables_not_show: "[ ...], --skip_tables  [ ...] [[]] what tables NOT to show, write either the sequence of names or indexes, according to this list: 11: segment_outputs, 10: merge_outputs, 13: modeled_regions, 12: models, 1: paths, 3: mapped_outputs, 2: jobs, 5: parsed_outputs, 4: mapped_inputs, 7: filter_outputs, 6: intersection_outputs, 9: merge_stats, 8: normalize_outputs"
    job_ids: "Display only items matching these jobids."
    where: "Select rows. List pairs of keywords (column header) and values to filter results. For example to get only results where \"18\" appears in the column \"Chromosome\", the option should be set as: `-W Chromosome,18`"
    select: "Select columns. List the keyword (column headers) to be displayed. E.g. to show only the colmns JobIds: `-s Jobids`"
    tmp_db: "if provided uses this directory to manipulate the database"
    tsv: "Print output in tab separated format"
    writes_output_specified: "Writes output in specified file."
  }
}