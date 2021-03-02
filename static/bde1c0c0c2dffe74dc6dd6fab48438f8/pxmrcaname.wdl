version 1.0

task Pxmrcaname {
  input {
    File? tree_f
    File? mrca
    File? out_f
    Boolean? citation
  }
  command <<<
    pxmrcaname \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if defined(mrca) then ("--mrca " +  '"' + mrca + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    tree_f: "input newick tree file, STDIN otherwise"
    mrca: "file containing MRCA declarations"
    out_f: "output newick file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}