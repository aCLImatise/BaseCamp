version 1.0

task Pxrr {
  input {
    File? tree_f
    String? out_groups
    Boolean? ranked
    Boolean? un_root
    File? out_f
    Boolean? silent
    Boolean? citation
  }
  command <<<
    pxrr \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if defined(out_groups) then ("--outgroups " +  '"' + out_groups + '"') else ""} \
      ~{if (ranked) then "--ranked" else ""} \
      ~{if (un_root) then "--unroot" else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    tree_f: "input tree file, STDIN otherwise"
    out_groups: "outgroup sep by commas (NO SPACES!)"
    ranked: "turn on ordering of outgroups. will root on first one present"
    un_root: "unroot the tree"
    out_f: "output tree file, STOUT otherwise"
    silent: "do not error if outgroup(s) not found"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}