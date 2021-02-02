version 1.0

task FastaMultigreppl {
  input {
    Boolean? list
    Boolean? fa
    Boolean? man
  }
  command <<<
    fasta_multigrep_pl \
      ~{if (list) then "--list" else ""} \
      ~{if (fa) then "--fa" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    list: "Colon (:) separated list of Fasta IDs to extract (mandatory)"
    fa: "Input file in Fasta format (mandatory)"
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
  }
}