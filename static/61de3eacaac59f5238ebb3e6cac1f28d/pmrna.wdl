version 1.0

task Pmrna {
  input {
    Boolean? introns
    Boolean? locus
    Boolean? file_write_mapping
    Boolean? pseudogenes
    Int an_not_dot_gff_three
    Int new_dot_gff_three
  }
  command <<<
    pmrna \
      ~{an_not_dot_gff_three} \
      ~{new_dot_gff_three} \
      ~{if (introns) then "--introns" else ""} \
      ~{if (locus) then "--locus" else ""} \
      ~{if (file_write_mapping) then "--map" else ""} \
      ~{if (pseudogenes) then "--pseudogenes" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/aegean:0.16.0--hc2cb157_0"
  }
  parameter_meta {
    introns: "flag indicating that introns are declared explicitly\\nand do not need to be inferred from exon features;\\ndefault is to infer introns"
    locus: "report a single representative mRNA for each locus\\ninstead of each gene"
    file_write_mapping: ": FILE      write each gene/mRNA mapping to the specified file"
    pseudogenes: "disable pseudogene detection and correction"
    an_not_dot_gff_three: ""
    new_dot_gff_three: ""
  }
  output {
    File out_stdout = stdout()
  }
}