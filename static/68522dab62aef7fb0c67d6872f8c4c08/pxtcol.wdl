version 1.0

task Pxtcol {
  input {
    File? tree_f
    File? mr_caf
    File? nodeid_f
    File? out_f
    Boolean? citation
  }
  command <<<
    pxtcol \
      ~{if defined(tree_f) then ("--treef " +  '"' + tree_f + '"') else ""} \
      ~{if defined(mr_caf) then ("--mrcaf " +  '"' + mr_caf + '"') else ""} \
      ~{if defined(nodeid_f) then ("--nodeidf " +  '"' + nodeid_f + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    tree_f: "input tree file, STDIN otherwise"
    mr_caf: "file with mrcas and annotations, tab separated"
    nodeid_f: "file with nodeids (labels) and annotations, tab separated"
    out_f: "output file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}