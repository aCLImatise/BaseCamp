version 1.0

task CheckTableCoords {
  input {
    String tableTable
    String daysDaysOld
    String hoursHoursOld
    String excludeExclude
    Boolean ignoreIgnoreBlocks
    Boolean verboseVerboseBlocks
    String? databaseDatabase
    String? tablenameTablename
  }
  command <<<
    checkTableCoords \
      ~{databaseDatabase} \
      ~{if defined(tableTable) then ("-table " +  '"' + tableTable + '"') else ""} \
      ~{if defined(daysDaysOld) then ("-daysOld " +  '"' + daysDaysOld + '"') else ""} \
      ~{if defined(hoursHoursOld) then ("-hoursOld " +  '"' + hoursHoursOld + '"') else ""} \
      ~{if defined(excludeExclude) then ("-exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="-ignoreBlocks" false="" ignoreIgnoreBlocks} \
      ~{true="-verboseBlocks" false="" verboseVerboseBlocks} \
      ~{tablenameTablename}
  >>>
}