version 1.0

task Pxrlt {
  input {
    File? tree_f
    File? c_names
    File? n_names
    File? out_f
    Boolean? verbose
    Boolean? citation
  }
  command <<<
    pxrlt \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if defined(c_names) then ("--cnames " +  '"' + c_names + '"') else ""} \
      ~{if defined(n_names) then ("--nnames " +  '"' + n_names + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    tree_f: "input tree file, STDIN otherwise"
    c_names: "file containing current taxon labels (one per line)"
    n_names: "file containing new taxon labels (one per line)"
    out_f: "output file, STOUT otherwise"
    verbose: "make the output more verbose"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}