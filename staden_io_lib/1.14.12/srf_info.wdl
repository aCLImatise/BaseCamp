version 1.0

task SrfInfo {
  input {
    String lL
  }
  command <<<
    srf_info \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""}
  >>>
}