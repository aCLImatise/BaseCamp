version 1.0

task MentaLiSTjlListCgmlst {
  input {
    String? prefix
  }
  command <<<
    MentaLiST_jl list_cgmlst \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    prefix: "Only list schemes where the species name starts\\nwith this prefix."
  }
  output {
    File out_stdout = stdout()
  }
}