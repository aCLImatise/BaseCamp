version 1.0

task Pyfasta {
  input {
    File? valid_actionavailable_actionsextract
  }
  command <<<
    pyfasta \
      ~{if defined(valid_actionavailable_actionsextract) then ("-h " +  '"' + valid_actionavailable_actionsextract + '"') else ""}
  >>>
  parameter_meta {
    valid_actionavailable_actionsextract: "a valid action\\navailable actions:\\n`extract`: extract sequences from a fasta file\\n`info`: show info about the fasta file and exit.\\n`split`: split a large fasta file into separate files\\nand/or into K-mers.\\n`flatten`: flatten a fasta file inplace so that later\\ncommand-line (and programmattic) access via\\npyfasta will use the inplace flattened version\\nrather than creating another .flat copy of the\\nsequence.\\nto view the help for a particular action, use:\\npyfasta [action] --help\\ne.g.:\\npyfasta extract --help\\n"
  }
  output {
    File out_stdout = stdout()
  }
}