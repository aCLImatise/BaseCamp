version 1.0

task Pxbdfit {
  input {
    File? tree_f
    String? model
    File? out_f
    Boolean? citation
  }
  command <<<
    pxbdfit \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    tree_f: "input treefile, STDIN otherwise"
    model: "diversification model; either 'yule', 'bd' (default), or 'best'"
    out_f: "output file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}