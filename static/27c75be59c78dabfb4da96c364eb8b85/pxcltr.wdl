version 1.0

task Pxcltr {
  input {
    File? tree_f
    Boolean? root
    Boolean? labels
    File? out_f
    Boolean? citation
  }
  command <<<
    pxcltr \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if (root) then "--root" else ""} \
      ~{if (labels) then "--labels" else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    tree_f: "input treefile, STDIN otherwise"
    root: "remove root edge (if present)"
    labels: "remove internal node labels"
    out_f: "output file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}