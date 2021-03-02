version 1.0

task Pxtgen {
  input {
    Int? n_tax
    Boolean? rooted
    Boolean? count
    String? label
    File? out_f
    Boolean? citation
  }
  command <<<
    pxtgen \
      ~{if defined(n_tax) then ("--ntax " +  '"' + n_tax + '"') else ""} \
      ~{if (rooted) then "--rooted" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    n_tax: "number of taxa"
    rooted: "whether generated trees are rooted (default: false)"
    count: "give the number of possible trees for n taxa and exit"
    label: "prefix label for taxon names (default: 't')"
    out_f: "output file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}