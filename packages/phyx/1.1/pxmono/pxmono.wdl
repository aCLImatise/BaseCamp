version 1.0

task Pxmono {
  input {
    File? tree_f
    String? names
    File? names_f
    Boolean? comp
    File? out_f
    Boolean? ignore
    Boolean? citation
  }
  command <<<
    pxmono \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(names_f) then ("--namesf " +  '"' + names_f + '"') else ""} \
      ~{if (comp) then "--comp" else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (ignore) then "--ignore" else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    tree_f: "input tree file, STDIN otherwise"
    names: "names separated by commas (NO SPACES!)"
    names_f: "names in a file (each on a line)"
    comp: "take the complement (i.e. check monophyly of taxa not in list)"
    out_f: "output tree file, STOUT otherwise"
    ignore: "ignore missing (default: exit if names are not in the tree)"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}