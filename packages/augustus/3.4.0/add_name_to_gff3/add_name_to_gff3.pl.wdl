version 1.0

task AddNameToGff3pl {
  input {
    File? out
    Boolean? filter
    String evidence_modeler
  }
  command <<<
    add_name_to_gff3_pl \
      ~{evidence_modeler} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (filter) then "--filter" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    out: "gff3 output file"
    filter: "print only the features gene, mRNA, CDS and exon"
    evidence_modeler: "SYNOPSIS"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}