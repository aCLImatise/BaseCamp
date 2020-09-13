version 1.0

task MentaLiSTjlListPubmlst {
  input {
    String? prefix
  }
  command <<<
    MentaLiST_jl list_pubmlst \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    prefix: "Only list schemes where the species name starts\\nwith this prefix."
  }
  output {
    File out_stdout = stdout()
  }
}