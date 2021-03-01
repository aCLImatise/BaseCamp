version 1.0

task FilterVcfpl {
  input {
    String? no_indels
    String? remove_variants_lower
    File? file_remember_where
  }
  command <<<
    filterVcf_pl \
      ~{if defined(no_indels) then ("--noindels " +  '"' + no_indels + '"') else ""} \
      ~{if defined(remove_variants_lower) then ("-d " +  '"' + remove_variants_lower + '"') else ""} \
      ~{if defined(file_remember_where) then ("-b " +  '"' + file_remember_where + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_indels: "remove indels"
    remove_variants_lower: "to remove variants with this depth and lower"
    file_remember_where: "a file to remember where positions with low quality variations are held\\nat /usr/local/bin/filterVcf.pl line 18.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}