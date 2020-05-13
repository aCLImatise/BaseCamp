version 1.0

task BamtoolsStats {
  input {
    String inIn
    File listList
    Boolean insertInsert
  }
  command <<<
    bamtools stats \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(listList) then ("-list " +  '"' + listList + '"') else ""} \
      ~{true="-insert" false="" insertInsert}
  >>>
}