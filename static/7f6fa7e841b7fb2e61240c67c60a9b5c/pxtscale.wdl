version 1.0

task Pxtscale {
  input {
    File? tree_f
    Int? scale
    String? root_height
    File? out_f
    Boolean? citation
  }
  command <<<
    pxtscale \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(root_height) then ("--rootheight " +  '"' + root_height + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    tree_f: "input tree file, STDIN otherwise"
    scale: "edge length scaling factor"
    root_height: "height of root (tree must be ultrametric)"
    out_f: "output file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}