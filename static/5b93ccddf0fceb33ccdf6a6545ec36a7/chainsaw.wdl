version 1.0

task Chainsaw {
  input {
    String filterFilter
    File? filenamesFilenames
  }
  command <<<
    chainsaw \
      ~{filenamesFilenames} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""}
  >>>
}