version 1.0

task XmlGrep {
  input {
    Boolean manMan
    Boolean versionVersion
    String rootRoot
    String condCond
    Boolean filesFiles
    Boolean countCount
    Boolean strictStrict
    Boolean dateDate
    String encodingEncoding
    String nbNbResults
    Boolean byByFile
    String wrapWrap
    Boolean nowrapNowrap
    String descrDescr
    String groupGroupByFile
    String excludeExclude
    String prettyPrettyPrint
    Boolean textTextOnly
    Boolean htmlHtml
    Boolean tidyTidy
  }
  command <<<
    xml_grep \
      ~{true="--man" false="" manMan} \
      ~{true="--Version" false="" versionVersion} \
      ~{if defined(rootRoot) then ("--root " +  '"' + rootRoot + '"') else ""} \
      ~{if defined(condCond) then ("--cond " +  '"' + condCond + '"') else ""} \
      ~{true="--files" false="" filesFiles} \
      ~{true="--count" false="" countCount} \
      ~{true="--strict" false="" strictStrict} \
      ~{true="--date" false="" dateDate} \
      ~{if defined(encodingEncoding) then ("--encoding " +  '"' + encodingEncoding + '"') else ""} \
      ~{if defined(nbNbResults) then ("--nb_results " +  '"' + nbNbResults + '"') else ""} \
      ~{true="--by_file" false="" byByFile} \
      ~{if defined(wrapWrap) then ("--wrap " +  '"' + wrapWrap + '"') else ""} \
      ~{true="--nowrap" false="" nowrapNowrap} \
      ~{if defined(descrDescr) then ("--descr " +  '"' + descrDescr + '"') else ""} \
      ~{if defined(groupGroupByFile) then ("--group_by_file " +  '"' + groupGroupByFile + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(prettyPrettyPrint) then ("--pretty_print " +  '"' + prettyPrettyPrint + '"') else ""} \
      ~{true="--text_only" false="" textTextOnly} \
      ~{true="--html" false="" htmlHtml} \
      ~{true="--Tidy" false="" tidyTidy}
  >>>
}