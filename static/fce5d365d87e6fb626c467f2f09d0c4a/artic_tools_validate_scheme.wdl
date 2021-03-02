version 1.0

task ArtictoolsValidateScheme {
  input {
    String? output_primers_eqs
    String? refseq
    String? output_inserts
    String scheme
  }
  command <<<
    artic_tools validate_scheme \
      ~{scheme} \
      ~{if defined(output_primers_eqs) then ("--outputPrimerSeqs " +  '"' + output_primers_eqs + '"') else ""} \
      ~{if defined(refseq) then ("--refSeq " +  '"' + refseq + '"') else ""} \
      ~{if defined(output_inserts) then ("--outputInserts " +  '"' + output_inserts + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/artic-tools:0.3.0--hee4d88c_0"
  }
  parameter_meta {
    output_primers_eqs: "If provided, will write primer sequences as multiFASTA (requires --refSeq to be provided)"
    refseq: "The reference sequence for the primer scheme (FASTA format)"
    output_inserts: "If provided, will write primer scheme inserts as BED (exluding primer sequences)"
    scheme: ""
  }
  output {
    File out_stdout = stdout()
  }
}