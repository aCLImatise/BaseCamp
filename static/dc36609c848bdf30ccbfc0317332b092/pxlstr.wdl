version 1.0

task Pxlstr {
  input {
    File? tree_f
    Boolean? rooted
    Boolean? age
    Boolean? n_tips
    Boolean? ultrametric
    Boolean? binary
    Boolean? length
    Boolean? tip_labels
    Boolean? rt_var
    File? out_f
    Boolean? citation
  }
  command <<<
    pxlstr \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if (rooted) then "--rooted" else ""} \
      ~{if (age) then "--age" else ""} \
      ~{if (n_tips) then "--ntips" else ""} \
      ~{if (ultrametric) then "--ultrametric" else ""} \
      ~{if (binary) then "--binary" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (tip_labels) then "--tiplabels" else ""} \
      ~{if (rt_var) then "--rtvar" else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    tree_f: "input tree file, STDIN otherwise"
    rooted: "return whether the tree is rooted"
    age: "return the height of root (must be rooted and ultrametric)"
    n_tips: "return the number of terminals"
    ultrametric: "return whether tree is ultrametric"
    binary: "return whether tree is binary"
    length: "return the length of the tree"
    tip_labels: "return all tip labels (one per line)"
    rt_var: "return root-to-tip variance"
    out_f: "output tree stats file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}