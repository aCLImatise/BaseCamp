version 1.0

task MentalistListPubmlst {
  input {
    String? prefix
  }
  command <<<
    mentalist list_pubmlst \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix: "Only list schemes where the species name starts\\nwith this prefix."
  }
  output {
    File out_stdout = stdout()
  }
}