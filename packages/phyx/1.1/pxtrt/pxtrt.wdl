version 1.0

task Pxtrt {
  input {
    File? tree_f
    String? names
    File? names_f
    Boolean? comp
    File? out_f
    Boolean? silent
    Boolean? citation
  }
  command <<<
    pxtrt \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if defined(names_f) then ("--namesf " +  '"' + names_f + '"') else ""} \
      ~{if (comp) then "--comp" else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    tree_f: "input tree file, STDIN otherwise"
    names: "names sep by commas (NO SPACES!)"
    names_f: "names in a file (each on a line)"
    comp: "take the complement (i.e. remove any taxa not in list)"
    out_f: "output tree file, STOUT otherwise"
    silent: "suppress warnings of missing tips"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}