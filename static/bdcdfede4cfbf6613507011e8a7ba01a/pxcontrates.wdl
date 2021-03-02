version 1.0

task Pxcontrates {
  input {
    File? char_f
    File? tree_f
    Int? analysis
    File? out_f
    Boolean? citation
  }
  command <<<
    pxcontrates \
      ~{if defined(char_f) then ("--charf " +  '"' + char_f + '"') else ""} \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if defined(analysis) then ("--analysis " +  '"' + analysis + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    char_f: "input character file, STDIN otherwise"
    tree_f: "input tree file, STDIN otherwise"
    analysis: "analysis type (0=anc[DEFAULT], 1=ratetest)"
    out_f: "output sequence file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}