version 1.0

task HmmgsSearch {
  input {
    Boolean uU
    String pP
    String? kmKmErs
  }
  command <<<
    hmmgs search \
      ~{kmKmErs} \
      ~{true="-u" false="" uU} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""}
  >>>
}