version 1.0

task Ct2db {
  input {
    Boolean? remove_pk
    Boolean? convert_to_rna
    Boolean? verbose
  }
  command <<<
    ct2db \
      ~{if (remove_pk) then "--removePK" else ""} \
      ~{if (convert_to_rna) then "--convertToRNA" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0"
  }
  parameter_meta {
    remove_pk: "Remove pseudoknots from structure\\n(default=off)"
    convert_to_rna: "Substitute all nucleotides with their RNA alphabet\\ncounter parts, i.e. convert to characters A, C, G, U or\\nN for unknown bases.\\n(default=off)"
    verbose: "Be verbose\\n(default=off)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}