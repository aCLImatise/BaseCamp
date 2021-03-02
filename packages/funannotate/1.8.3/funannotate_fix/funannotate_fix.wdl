version 1.0

task FunannotateFix {
  input {
    Boolean? annotated_genome_genbank
    Boolean? tbl
    Boolean? drop
    Directory? out
    Boolean? tbl_two_asn
    String arguments
  }
  command <<<
    funannotate fix \
      ~{arguments} \
      ~{if (annotated_genome_genbank) then "--input" else ""} \
      ~{if (tbl) then "--tbl" else ""} \
      ~{if (drop) then "--drop" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (tbl_two_asn) then "--tbl2asn" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/funannotate:1.8.3--pyh3252c3a_0"
  }
  parameter_meta {
    annotated_genome_genbank: "Annotated genome in GenBank format."
    tbl: "NCBI tbl annotation file."
    drop: "Gene models to remove/drop from annotation. File with locus_tag 1 per line."
    out: "Output folder"
    tbl_two_asn: "Parameters for tbl2asn. Default: \\\"-l paired-ends\\\""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}