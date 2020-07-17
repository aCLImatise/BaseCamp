version 1.0

task Chainsaw {
  input {
    String? filter
    File? filenames
  }
  command <<<
    chainsaw \
      ~{filenames} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""}
  >>>
  parameter_meta {
    filter: ": add a protein list filter"
    filenames: ""
  }
}