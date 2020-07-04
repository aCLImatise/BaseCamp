version 1.0

task BlastToPsl {
  input {
    String? verbose
    String? eval
    Boolean? psl_x
    String blast_output
    String psl
  }
  command <<<
    blastToPsl \
      ~{blast_output} \
      ~{psl} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(eval) then ("-eVal " +  '"' + eval + '"') else ""} \
      ~{true="-pslx" false="" psl_x}
  >>>
  parameter_meta {
    verbose: "- n >= 3 prints each line of file after parsing. n >= 4 dumps the result of each query"
    eval: "n is e-value threshold to filter results. Format can be either an integer, double or 1e-10. Default is no filter."
    psl_x: "- create PSLX output (includes sequences for blocks)"
    blast_output: ""
    psl: ""
  }
}