version 1.0

task FunannotateFix {
  input {
    Boolean? annotated_genome_genbank
    Boolean? tbl
    Boolean? drop
    Boolean? out
    Boolean? tbl_two_asn
    String arguments
  }
  command <<<
    funannotate fix \
      ~{arguments} \
      ~{true="--input" false="" annotated_genome_genbank} \
      ~{true="--tbl" false="" tbl} \
      ~{true="--drop" false="" drop} \
      ~{true="--out" false="" out} \
      ~{true="--tbl2asn" false="" tbl_two_asn}
  >>>
  parameter_meta {
    annotated_genome_genbank: "Annotated genome in GenBank format."
    tbl: "NCBI tbl annotation file."
    drop: "Gene models to remove/drop from annotation. File with locus_tag 1 per line."
    out: "Output folder"
    tbl_two_asn: "Parameters for tbl2asn. Default: \"-l paired-ends\""
    arguments: ""
  }
}