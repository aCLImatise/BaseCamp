version 1.0

task Cmph5toolspyStats {
  input {
    File? outfile
    String? what
    String? where
    String? group_by
    String? sort_by
    String? limit
  }
  command <<<
    cmph5tools_py stats \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(what) then ("--what " +  '"' + what + '"') else ""} \
      ~{if defined(where) then ("--where " +  '"' + where + '"') else ""} \
      ~{if defined(group_by) then ("--groupBy " +  '"' + group_by + '"') else ""} \
      ~{if defined(sort_by) then ("--sortBy " +  '"' + sort_by + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""}
  >>>
  parameter_meta {
    outfile: "output csv filename"
    what: ""
    where: ""
    group_by: ""
    sort_by: ""
    limit: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}