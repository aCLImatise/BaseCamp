version 1.0

task FasttreePipeline {
  input {
    Boolean? database
    Boolean? frequency
    Boolean? csv
    Boolean? optional_model_wag
  }
  command <<<
    fasttree_pipeline \
      ~{if (database) then "--database" else ""} \
      ~{if (frequency) then "--frequency" else ""} \
      ~{if (csv) then "-csv" else ""} \
      ~{if (optional_model_wag) then "-m" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    database: "BLAST database to retrieve sequences from, required for text or csv files"
    frequency: "OPTIONAL, frequency of gaps allowed per residue, default is 0.25"
    csv: "OPTIONAL, CSV of ortholog results, the first column must be query accessions with the heading Accession, remaining columns must be the results with one column per organism, the first row should be organism names"
    optional_model_wag: "OPTIONAL, model for phylogenetic analysis (choice of lg or wag for protein or gtr for nucleotide), default if not supplied is JTT for protein and JC for nucleotide"
  }
  output {
    File out_stdout = stdout()
  }
}