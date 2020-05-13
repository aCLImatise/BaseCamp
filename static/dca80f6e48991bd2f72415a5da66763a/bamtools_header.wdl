version 1.0

task BamtoolsHeader {
  input {
    String inIn
    File listList
  }
  command <<<
    bamtools header \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(listList) then ("-list " +  '"' + listList + '"') else ""}
  >>>
}