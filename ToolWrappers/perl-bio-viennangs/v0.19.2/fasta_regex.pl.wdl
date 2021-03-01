version 1.0

task FastaRegexpl {
  input {
    String? name
    File? fa
    String? motif
  }
  command <<<
    fasta_regex_pl \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(fa) then ("--fa " +  '"' + fa + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: ""
    fa: ""
    motif: ""
  }
  output {
    File out_stdout = stdout()
  }
}