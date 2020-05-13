version 1.0

task FilterReadList {
  input {
    String iI
    String lL
    String discardDiscard
    Boolean vV
    Boolean dD
  }
  command <<<
    filter_read_list \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(discardDiscard) then ("--discard " +  '"' + discardDiscard + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-d" false="" dD}
  >>>
}