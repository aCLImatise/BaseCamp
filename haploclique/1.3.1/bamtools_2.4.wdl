version 1.0

task Bamtools2.4.1Stats {
  input {
    String inIn
    File listList
    Boolean insertInsert
  }
  command <<<
    bamtools-2.4.1 stats \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(listList) then ("-list " +  '"' + listList + '"') else ""} \
      ~{true="-insert" false="" insertInsert}
  >>>
}