version 1.0

task CheckTableCoords {
  input {
    String? table
    String? days_old
    String? hours_old
    String? exclude
    Boolean? ignore_blocks
    Boolean? verbose_blocks
  }
  command <<<
    checkTableCoords \
      ~{if defined(table) then ("-table " +  '"' + table + '"') else ""} \
      ~{if defined(days_old) then ("-daysOld " +  '"' + days_old + '"') else ""} \
      ~{if defined(hours_old) then ("-hoursOld " +  '"' + hours_old + '"') else ""} \
      ~{if defined(exclude) then ("-exclude " +  '"' + exclude + '"') else ""} \
      ~{if (ignore_blocks) then "-ignoreBlocks" else ""} \
      ~{if (verbose_blocks) then "-verboseBlocks" else ""}
  >>>
  parameter_meta {
    table: "Check this table only.  (Default: all tables)"
    days_old: "Check tables that have been modified at most N days ago."
    hours_old: "Check tables that have been modified at most N hours ago.\\n(days and hours are additive)"
    exclude: "Exclude tables matching any pattern in comma-separated"
    ignore_blocks: "To save time (but lose coverage), skip block coord checks."
    verbose_blocks: "Print out more details about illegal block coords, since\\nthey can't be found by simple SQL queries.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}