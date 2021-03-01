version 1.0

task ArrowAnnotationsMergeExons {
  input {
    String? organism
    String? sequence
    String exon_a
    String exon_b
  }
  command <<<
    arrow annotations merge_exons \
      ~{exon_a} \
      ~{exon_b} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0"
  }
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
    exon_a: ""
    exon_b: ""
  }
  output {
    File out_stdout = stdout()
  }
}