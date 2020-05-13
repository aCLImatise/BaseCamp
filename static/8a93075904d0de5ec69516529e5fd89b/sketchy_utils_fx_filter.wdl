version 1.0

task SketchyUtilsFxFilter {
  input {
    File fpathFpath
    String outputOutput
    File idsIds
    Int columnColumn
    String sepSep
  }
  command <<<
    sketchy utils fx-filter \
      ~{if defined(fpathFpath) then ("--fpath " +  '"' + fpathFpath + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(idsIds) then ("--ids " +  '"' + idsIds + '"') else ""} \
      ~{if defined(columnColumn) then ("--column " +  '"' + columnColumn + '"') else ""} \
      ~{if defined(sepSep) then ("--sep " +  '"' + sepSep + '"') else ""}
  >>>
}